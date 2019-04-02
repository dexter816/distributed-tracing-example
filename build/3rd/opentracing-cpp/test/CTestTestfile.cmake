# CMake generated Testfile for 
# Source directory: /home/d/distributed-tracing-example/3rd/opentracing-cpp/test
# Build directory: /home/d/distributed-tracing-example/build/3rd/opentracing-cpp/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(tracer_test "tracer_test")
add_test(string_view_test "string_view_test")
add_test(value_test "value_test")
add_test(util_test "util_test")
add_test(dynamic_load_test "dynamic_load_test" "--mocktracer_library" "/home/d/distributed-tracing-example/build/3rd/opentracing-cpp/mocktracer/libopentracing_mocktracer.so")
