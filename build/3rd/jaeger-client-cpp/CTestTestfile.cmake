# CMake generated Testfile for 
# Source directory: /home/d/distributed-tracing-example/3rd/jaeger-client-cpp
# Build directory: /home/d/distributed-tracing-example/build/3rd/jaeger-client-cpp
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(UnitTest "/home/d/distributed-tracing-example/build/3rd/jaeger-client-cpp/UnitTest")
add_test(DynamicallyLoadTracerTest "/home/d/distributed-tracing-example/build/3rd/jaeger-client-cpp/DynamicallyLoadTracerTest" "/home/d/distributed-tracing-example/build/3rd/jaeger-client-cpp/libjaegertracing.so")
subdirs(src/jaegertracing/testutils)
