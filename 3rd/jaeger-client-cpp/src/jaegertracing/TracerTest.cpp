/*
 * Copyright (c) 2017-2018 Uber Technologies, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "jaegertracing/Config.h"
#include "jaegertracing/Constants.h"
#include "jaegertracing/Span.h"
#include "jaegertracing/SpanContext.h"
#include "jaegertracing/Tag.h"
#include "jaegertracing/TraceID.h"
#include "jaegertracing/Tracer.h"
#include "jaegertracing/baggage/RestrictionsConfig.h"
#include "jaegertracing/net/IPAddress.h"
#include "jaegertracing/propagation/HeadersConfig.h"
#include "jaegertracing/reporters/Config.h"
#include "jaegertracing/samplers/Config.h"
#include "jaegertracing/testutils/TracerUtil.h"
#include <algorithm>
#include <chrono>
#include <gtest/gtest.h>
#include <iterator>
#include <memory>
#include <opentracing/expected/expected.hpp>
#include <opentracing/noop.h>
#include <opentracing/propagation.h>
#include <opentracing/span.h>
#include <opentracing/string_view.h>
#include <opentracing/tracer.h>
#include <opentracing/util.h>
#include <sstream>
#include <stdexcept>
#include <string>
#include <sys/socket.h>
#include <utility>
#include <vector>

namespace jaegertracing {

using StrMap = SpanContext::StrMap;

namespace {

class FakeSpanContext : public opentracing::SpanContext {
    void ForeachBaggageItem(
        std::function<bool(const std::string&,
                           const std::string&)> /* unused */) const override
    {
        // Do nothing
    }
};

template <typename BaseWriter>
struct WriterMock : public BaseWriter {
    explicit WriterMock(StrMap& keyValuePairs)
        : _keyValuePairs(keyValuePairs)
    {
    }

    opentracing::expected<void>
    Set(opentracing::string_view key,
        opentracing::string_view value) const override
    {
        _keyValuePairs[key] = value;
        return opentracing::make_expected();
    }

    StrMap& _keyValuePairs;
};

template <typename BaseReader>
struct ReaderMock : public BaseReader {
    using Function =
        std::function<bool(opentracing::string_view, opentracing::string_view)>;

    explicit ReaderMock(const StrMap& keyValuePairs)
        : _keyValuePairs(keyValuePairs)
    {
    }

    opentracing::expected<void> ForeachKey(
        std::function<opentracing::expected<void>(opentracing::string_view,
                                                  opentracing::string_view)> f)
        const override
    {
        for (auto&& pair : _keyValuePairs) {
            const auto result = f(pair.first, pair.second);
            if (!result) {
                return result;
            }
        }
        return opentracing::make_expected();
    }

    const StrMap& _keyValuePairs;
};

template <typename ClockType>
typename ClockType::duration
absTimeDiff(const typename ClockType::time_point& lhs,
            const typename ClockType::time_point& rhs)
{
    return (rhs < lhs) ? (lhs - rhs) : (rhs - lhs);
}

}  // anonymous namespace

TEST(Tracer, testTracer)
{
    const auto handle = testutils::TracerUtil::installGlobalTracer();
    const auto tracer =
        std::static_pointer_cast<Tracer>(opentracing::Tracer::Global());

    auto tagItr = std::find_if(
        std::begin(tracer->tags()),
        std::end(tracer->tags()),
        [](const Tag& tag) { return tag.key() == kJaegerClientVersionTagKey; });
    ASSERT_NE(std::end(tracer->tags()), tagItr);
    ASSERT_TRUE(tagItr->value().is<const char*>());
    ASSERT_EQ("C++-",
              static_cast<std::string>(tagItr->value().get<const char*>())
                  .substr(0, 4));

    opentracing::StartSpanOptions options;
    options.tags.push_back({ "tag-key", 1.23 });

    const FakeSpanContext fakeCtx;
    options.references.emplace_back(opentracing::SpanReferenceType::ChildOfRef,
                                    &fakeCtx);
    const SpanContext emptyCtx(TraceID(), 0, 0, 0, StrMap());
    options.references.emplace_back(opentracing::SpanReferenceType::ChildOfRef,
                                    &emptyCtx);
    const SpanContext parentCtx(
        TraceID(0xDEAD, 0xBEEF), 0xBEEF, 1234, 0, StrMap());
    options.references.emplace_back(opentracing::SpanReferenceType::ChildOfRef,
                                    &parentCtx);
    options.references.emplace_back(
        opentracing::SpanReferenceType::FollowsFromRef, &parentCtx);
    const SpanContext debugCtx(
        TraceID(),
        0,
        0,
        static_cast<unsigned char>(SpanContext::Flag::kSampled) |
            static_cast<unsigned char>(SpanContext::Flag::kDebug),
        StrMap({ { "debug-baggage-key", "debug-baggage-value" } }),
        "123");
    options.references.emplace_back(opentracing::SpanReferenceType::ChildOfRef,
                                    &debugCtx);

    const auto& tags = tracer->tags();
    auto itr =
        std::find_if(std::begin(tags), std::end(tags), [](const Tag& tag) {
            return tag.key() == kTracerIPTagKey;
        });
    ASSERT_NE(std::end(tags), itr);
    ASSERT_TRUE(itr->value().is<std::string>());
    ASSERT_EQ(net::IPAddress::v4(itr->value().get<std::string>()).host(),
              net::IPAddress::localIP(AF_INET).host());

    std::unique_ptr<Span> span(static_cast<Span*>(
        tracer->StartSpanWithOptions("test-operation", options).release()));
    ASSERT_TRUE(static_cast<bool>(span));
    ASSERT_EQ(static_cast<opentracing::Tracer*>(tracer.get()), &span->tracer());

    span->SetOperationName("test-set-operation");
    span->SetTag("tag-key", "tag-value");
    span->SetBaggageItem("test-baggage-item-key", "test-baggage-item-value");
    ASSERT_EQ("test-baggage-item-value",
              span->BaggageItem("test-baggage-item-key"));
    span->Log({ { "log-bool", true } });
    opentracing::FinishSpanOptions foptions;
    opentracing::LogRecord lr{};
    lr.fields = { {"options-log", "yep"} };
    foptions.log_records.push_back(std::move(lr));
    lr.timestamp = opentracing::SystemClock::now();
    span->FinishWithOptions(foptions);
    ASSERT_GE(Span::SteadyClock::now(),
              span->startTimeSteady() + span->duration());
    span->SetOperationName("test-set-operation-after-finish");
    ASSERT_EQ("test-set-operation", span->operationName());
    span->SetTag("tagged-after-finish-key", "tagged-after-finish-value");

    span.reset(static_cast<Span*>(
        tracer->StartSpanWithOptions("test-span-with-default-options", {})
            .release()));

    options.references.clear();
    options.references.emplace_back(
        opentracing::SpanReferenceType::FollowsFromRef, &parentCtx);
    span.reset(static_cast<Span*>(
        tracer->StartSpanWithOptions("test-span-with-default-options", options)
            .release()));

    options.references.clear();
    options.references.emplace_back(opentracing::SpanReferenceType::ChildOfRef,
                                    &debugCtx);
    span.reset(static_cast<Span*>(
        tracer->StartSpanWithOptions("test-span-with-debug-parent", options)
            .release()));

    options.references.clear();
    options.references.emplace_back(
        opentracing::SpanReferenceType::FollowsFromRef, &parentCtx);
    options.start_steady_timestamp = Tracer::SteadyClock::now();
    span.reset(static_cast<Span*>(
        tracer
            ->StartSpanWithOptions("test-span-with-default-system-timestamp",
                                   options)
            .release()));
    const auto calculatedSystemTime =
        static_cast<Tracer::SystemClock::time_point>(
            opentracing::convert_time_point<Tracer::SystemClock>(
                span->startTimeSteady()));
    ASSERT_GE(std::chrono::milliseconds(10),
              absTimeDiff<Tracer::SystemClock>(span->startTimeSystem(),
                                               calculatedSystemTime));

    options.start_system_timestamp = Tracer::SystemClock::now();
    span.reset(static_cast<Span*>(
        tracer
            ->StartSpanWithOptions("test-span-with-default-steady-timestamp",
                                   options)
            .release()));
    const auto calculatedSteadyTime =
        static_cast<Tracer::SteadyClock::time_point>(
            opentracing::convert_time_point<Tracer::SteadyClock>(
                span->startTimeSystem()));
    ASSERT_GE(std::chrono::milliseconds(10),
              absTimeDiff<Tracer::SteadyClock>(span->startTimeSteady(),
                                               calculatedSteadyTime));

    options.start_system_timestamp = Tracer::SystemClock::now();
    options.start_steady_timestamp = Tracer::SteadyClock::now();
    span.reset(static_cast<Span*>(
        tracer->StartSpanWithOptions("test-span-with-both-timestamps", options)
            .release()));
    ASSERT_EQ(options.start_system_timestamp, span->startTimeSystem());
    ASSERT_EQ(options.start_steady_timestamp, span->startTimeSteady());

    span.reset();

    opentracing::Tracer::InitGlobal(opentracing::MakeNoopTracer());
}

TEST(Tracer, testConstructorFailure)
{
    Config config;
    ASSERT_THROW(Tracer::make("", config), std::invalid_argument);
}

TEST(Tracer, testDisabledConfig)
{
    Config config(true,
                  samplers::Config(),
                  reporters::Config(),
                  propagation::HeadersConfig(),
                  baggage::RestrictionsConfig());
    ASSERT_FALSE(static_cast<bool>(std::dynamic_pointer_cast<Tracer>(
        Tracer::make("test-service", config))));
}

TEST(Tracer, testPropagation)
{
    const auto handle = testutils::TracerUtil::installGlobalTracer();
    const auto tracer =
        std::static_pointer_cast<Tracer>(opentracing::Tracer::Global());
    const std::unique_ptr<Span> span(static_cast<Span*>(
        tracer->StartSpanWithOptions("test-inject", {}).release()));
    span->SetBaggageItem("test-baggage-item-key", "test-baggage-item-value");

    // Binary
    {
        std::stringstream ss;
        ASSERT_TRUE(static_cast<bool>(tracer->Inject(span->context(), ss)));
        auto result = tracer->Extract(ss);
        ASSERT_TRUE(static_cast<bool>(result));
        std::unique_ptr<const SpanContext> extractedCtx(
            static_cast<SpanContext*>(result->release()));
        ASSERT_TRUE(static_cast<bool>(extractedCtx));
        ASSERT_EQ(span->context(), *extractedCtx);
        FakeSpanContext fakeCtx;
        ss.clear();
        ss.str("");
        ASSERT_FALSE(static_cast<bool>(tracer->Inject(fakeCtx, ss)));
    }

    // Text map
    {
        StrMap textMap;
        WriterMock<opentracing::TextMapWriter> textWriter(textMap);
        ASSERT_TRUE(
            static_cast<bool>(tracer->Inject(span->context(), textWriter)));
        ASSERT_EQ(2, textMap.size());
        std::ostringstream oss;
        oss << span->context();
        ASSERT_EQ(oss.str(), textMap.at(kTraceContextHeaderName));
        ASSERT_EQ("test-baggage-item-value",
                  textMap.at(std::string(kTraceBaggageHeaderPrefix) +
                             "test-baggage-item-key"));
        ReaderMock<opentracing::TextMapReader> textReader(textMap);
        auto result = tracer->Extract(textReader);
        ASSERT_TRUE(static_cast<bool>(result));
        std::unique_ptr<const SpanContext> extractedCtx(
            static_cast<SpanContext*>(result->release()));
        ASSERT_TRUE(static_cast<bool>(extractedCtx));
        ASSERT_EQ(span->context(), *extractedCtx);
    }

    // HTTP map
    {
        StrMap headerMap;
        WriterMock<opentracing::HTTPHeadersWriter> headerWriter(headerMap);
        ASSERT_TRUE(
            static_cast<bool>(tracer->Inject(span->context(), headerWriter)));
        ASSERT_EQ(2, headerMap.size());
        std::ostringstream oss;
        oss << span->context();
        ASSERT_EQ(oss.str(), headerMap.at(kTraceContextHeaderName));
        ASSERT_EQ("test-baggage-item-value",
                  headerMap.at(std::string(kTraceBaggageHeaderPrefix) +
                               "test-baggage-item-key"));
        ReaderMock<opentracing::HTTPHeadersReader> headerReader(headerMap);
        auto result = tracer->Extract(headerReader);
        ASSERT_TRUE(static_cast<bool>(result));
        std::unique_ptr<const SpanContext> extractedCtx(
            static_cast<SpanContext*>(result->release()));
        ASSERT_TRUE(static_cast<bool>(extractedCtx));
        ASSERT_EQ(span->context(), *extractedCtx);
    }
}

}  // namespace jaegertracing