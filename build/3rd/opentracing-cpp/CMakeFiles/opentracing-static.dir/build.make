# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/d/distributed-tracing-example/3rd/opentracing-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/d/distributed-tracing-example/build/3rd/opentracing-cpp

# Include any dependencies generated for this target.
include CMakeFiles/opentracing-static.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/opentracing-static.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/opentracing-static.dir/flags.make

CMakeFiles/opentracing-static.dir/src/propagation.cpp.o: CMakeFiles/opentracing-static.dir/flags.make
CMakeFiles/opentracing-static.dir/src/propagation.cpp.o: /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/propagation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/d/distributed-tracing-example/build/3rd/opentracing-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/opentracing-static.dir/src/propagation.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opentracing-static.dir/src/propagation.cpp.o -c /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/propagation.cpp

CMakeFiles/opentracing-static.dir/src/propagation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opentracing-static.dir/src/propagation.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/propagation.cpp > CMakeFiles/opentracing-static.dir/src/propagation.cpp.i

CMakeFiles/opentracing-static.dir/src/propagation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opentracing-static.dir/src/propagation.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/propagation.cpp -o CMakeFiles/opentracing-static.dir/src/propagation.cpp.s

CMakeFiles/opentracing-static.dir/src/propagation.cpp.o.requires:

.PHONY : CMakeFiles/opentracing-static.dir/src/propagation.cpp.o.requires

CMakeFiles/opentracing-static.dir/src/propagation.cpp.o.provides: CMakeFiles/opentracing-static.dir/src/propagation.cpp.o.requires
	$(MAKE) -f CMakeFiles/opentracing-static.dir/build.make CMakeFiles/opentracing-static.dir/src/propagation.cpp.o.provides.build
.PHONY : CMakeFiles/opentracing-static.dir/src/propagation.cpp.o.provides

CMakeFiles/opentracing-static.dir/src/propagation.cpp.o.provides.build: CMakeFiles/opentracing-static.dir/src/propagation.cpp.o


CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.o: CMakeFiles/opentracing-static.dir/flags.make
CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.o: /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/dynamic_load.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/d/distributed-tracing-example/build/3rd/opentracing-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.o -c /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/dynamic_load.cpp

CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/dynamic_load.cpp > CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.i

CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/dynamic_load.cpp -o CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.s

CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.o.requires:

.PHONY : CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.o.requires

CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.o.provides: CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.o.requires
	$(MAKE) -f CMakeFiles/opentracing-static.dir/build.make CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.o.provides.build
.PHONY : CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.o.provides

CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.o.provides.build: CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.o


CMakeFiles/opentracing-static.dir/src/noop.cpp.o: CMakeFiles/opentracing-static.dir/flags.make
CMakeFiles/opentracing-static.dir/src/noop.cpp.o: /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/noop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/d/distributed-tracing-example/build/3rd/opentracing-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/opentracing-static.dir/src/noop.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opentracing-static.dir/src/noop.cpp.o -c /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/noop.cpp

CMakeFiles/opentracing-static.dir/src/noop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opentracing-static.dir/src/noop.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/noop.cpp > CMakeFiles/opentracing-static.dir/src/noop.cpp.i

CMakeFiles/opentracing-static.dir/src/noop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opentracing-static.dir/src/noop.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/noop.cpp -o CMakeFiles/opentracing-static.dir/src/noop.cpp.s

CMakeFiles/opentracing-static.dir/src/noop.cpp.o.requires:

.PHONY : CMakeFiles/opentracing-static.dir/src/noop.cpp.o.requires

CMakeFiles/opentracing-static.dir/src/noop.cpp.o.provides: CMakeFiles/opentracing-static.dir/src/noop.cpp.o.requires
	$(MAKE) -f CMakeFiles/opentracing-static.dir/build.make CMakeFiles/opentracing-static.dir/src/noop.cpp.o.provides.build
.PHONY : CMakeFiles/opentracing-static.dir/src/noop.cpp.o.provides

CMakeFiles/opentracing-static.dir/src/noop.cpp.o.provides.build: CMakeFiles/opentracing-static.dir/src/noop.cpp.o


CMakeFiles/opentracing-static.dir/src/tracer.cpp.o: CMakeFiles/opentracing-static.dir/flags.make
CMakeFiles/opentracing-static.dir/src/tracer.cpp.o: /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/tracer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/d/distributed-tracing-example/build/3rd/opentracing-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/opentracing-static.dir/src/tracer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opentracing-static.dir/src/tracer.cpp.o -c /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/tracer.cpp

CMakeFiles/opentracing-static.dir/src/tracer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opentracing-static.dir/src/tracer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/tracer.cpp > CMakeFiles/opentracing-static.dir/src/tracer.cpp.i

CMakeFiles/opentracing-static.dir/src/tracer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opentracing-static.dir/src/tracer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/tracer.cpp -o CMakeFiles/opentracing-static.dir/src/tracer.cpp.s

CMakeFiles/opentracing-static.dir/src/tracer.cpp.o.requires:

.PHONY : CMakeFiles/opentracing-static.dir/src/tracer.cpp.o.requires

CMakeFiles/opentracing-static.dir/src/tracer.cpp.o.provides: CMakeFiles/opentracing-static.dir/src/tracer.cpp.o.requires
	$(MAKE) -f CMakeFiles/opentracing-static.dir/build.make CMakeFiles/opentracing-static.dir/src/tracer.cpp.o.provides.build
.PHONY : CMakeFiles/opentracing-static.dir/src/tracer.cpp.o.provides

CMakeFiles/opentracing-static.dir/src/tracer.cpp.o.provides.build: CMakeFiles/opentracing-static.dir/src/tracer.cpp.o


CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.o: CMakeFiles/opentracing-static.dir/flags.make
CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.o: /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/tracer_factory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/d/distributed-tracing-example/build/3rd/opentracing-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.o -c /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/tracer_factory.cpp

CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/tracer_factory.cpp > CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.i

CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/tracer_factory.cpp -o CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.s

CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.o.requires:

.PHONY : CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.o.requires

CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.o.provides: CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.o.requires
	$(MAKE) -f CMakeFiles/opentracing-static.dir/build.make CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.o.provides.build
.PHONY : CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.o.provides

CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.o.provides.build: CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.o


CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.o: CMakeFiles/opentracing-static.dir/flags.make
CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.o: /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/ext/tags.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/d/distributed-tracing-example/build/3rd/opentracing-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.o -c /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/ext/tags.cpp

CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/ext/tags.cpp > CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.i

CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/ext/tags.cpp -o CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.s

CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.o.requires:

.PHONY : CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.o.requires

CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.o.provides: CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.o.requires
	$(MAKE) -f CMakeFiles/opentracing-static.dir/build.make CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.o.provides.build
.PHONY : CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.o.provides

CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.o.provides.build: CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.o


CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.o: CMakeFiles/opentracing-static.dir/flags.make
CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.o: /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/dynamic_load_unix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/d/distributed-tracing-example/build/3rd/opentracing-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.o -c /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/dynamic_load_unix.cpp

CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/dynamic_load_unix.cpp > CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.i

CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/d/distributed-tracing-example/3rd/opentracing-cpp/src/dynamic_load_unix.cpp -o CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.s

CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.o.requires:

.PHONY : CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.o.requires

CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.o.provides: CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.o.requires
	$(MAKE) -f CMakeFiles/opentracing-static.dir/build.make CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.o.provides.build
.PHONY : CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.o.provides

CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.o.provides.build: CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.o


# Object files for target opentracing-static
opentracing__static_OBJECTS = \
"CMakeFiles/opentracing-static.dir/src/propagation.cpp.o" \
"CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.o" \
"CMakeFiles/opentracing-static.dir/src/noop.cpp.o" \
"CMakeFiles/opentracing-static.dir/src/tracer.cpp.o" \
"CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.o" \
"CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.o" \
"CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.o"

# External object files for target opentracing-static
opentracing__static_EXTERNAL_OBJECTS =

libopentracing.a: CMakeFiles/opentracing-static.dir/src/propagation.cpp.o
libopentracing.a: CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.o
libopentracing.a: CMakeFiles/opentracing-static.dir/src/noop.cpp.o
libopentracing.a: CMakeFiles/opentracing-static.dir/src/tracer.cpp.o
libopentracing.a: CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.o
libopentracing.a: CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.o
libopentracing.a: CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.o
libopentracing.a: CMakeFiles/opentracing-static.dir/build.make
libopentracing.a: CMakeFiles/opentracing-static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/d/distributed-tracing-example/build/3rd/opentracing-cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library libopentracing.a"
	$(CMAKE_COMMAND) -P CMakeFiles/opentracing-static.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opentracing-static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/opentracing-static.dir/build: libopentracing.a

.PHONY : CMakeFiles/opentracing-static.dir/build

CMakeFiles/opentracing-static.dir/requires: CMakeFiles/opentracing-static.dir/src/propagation.cpp.o.requires
CMakeFiles/opentracing-static.dir/requires: CMakeFiles/opentracing-static.dir/src/dynamic_load.cpp.o.requires
CMakeFiles/opentracing-static.dir/requires: CMakeFiles/opentracing-static.dir/src/noop.cpp.o.requires
CMakeFiles/opentracing-static.dir/requires: CMakeFiles/opentracing-static.dir/src/tracer.cpp.o.requires
CMakeFiles/opentracing-static.dir/requires: CMakeFiles/opentracing-static.dir/src/tracer_factory.cpp.o.requires
CMakeFiles/opentracing-static.dir/requires: CMakeFiles/opentracing-static.dir/src/ext/tags.cpp.o.requires
CMakeFiles/opentracing-static.dir/requires: CMakeFiles/opentracing-static.dir/src/dynamic_load_unix.cpp.o.requires

.PHONY : CMakeFiles/opentracing-static.dir/requires

CMakeFiles/opentracing-static.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/opentracing-static.dir/cmake_clean.cmake
.PHONY : CMakeFiles/opentracing-static.dir/clean

CMakeFiles/opentracing-static.dir/depend:
	cd /home/d/distributed-tracing-example/build/3rd/opentracing-cpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/d/distributed-tracing-example/3rd/opentracing-cpp /home/d/distributed-tracing-example/3rd/opentracing-cpp /home/d/distributed-tracing-example/build/3rd/opentracing-cpp /home/d/distributed-tracing-example/build/3rd/opentracing-cpp /home/d/distributed-tracing-example/build/3rd/opentracing-cpp/CMakeFiles/opentracing-static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/opentracing-static.dir/depend
