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
CMAKE_SOURCE_DIR = /home/d/distributed-tracing-example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/d/distributed-tracing-example/build

# Include any dependencies generated for this target.
include src/dist_tracing/CMakeFiles/disttracing.dir/depend.make

# Include the progress variables for this target.
include src/dist_tracing/CMakeFiles/disttracing.dir/progress.make

# Include the compile flags for this target's objects.
include src/dist_tracing/CMakeFiles/disttracing.dir/flags.make

src/dist_tracing/CMakeFiles/disttracing.dir/TracerPlugin.cc.o: src/dist_tracing/CMakeFiles/disttracing.dir/flags.make
src/dist_tracing/CMakeFiles/disttracing.dir/TracerPlugin.cc.o: ../src/dist_tracing/TracerPlugin.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/d/distributed-tracing-example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/dist_tracing/CMakeFiles/disttracing.dir/TracerPlugin.cc.o"
	cd /home/d/distributed-tracing-example/build/src/dist_tracing && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/disttracing.dir/TracerPlugin.cc.o -c /home/d/distributed-tracing-example/src/dist_tracing/TracerPlugin.cc

src/dist_tracing/CMakeFiles/disttracing.dir/TracerPlugin.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/disttracing.dir/TracerPlugin.cc.i"
	cd /home/d/distributed-tracing-example/build/src/dist_tracing && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/d/distributed-tracing-example/src/dist_tracing/TracerPlugin.cc > CMakeFiles/disttracing.dir/TracerPlugin.cc.i

src/dist_tracing/CMakeFiles/disttracing.dir/TracerPlugin.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/disttracing.dir/TracerPlugin.cc.s"
	cd /home/d/distributed-tracing-example/build/src/dist_tracing && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/d/distributed-tracing-example/src/dist_tracing/TracerPlugin.cc -o CMakeFiles/disttracing.dir/TracerPlugin.cc.s

src/dist_tracing/CMakeFiles/disttracing.dir/TracerPlugin.cc.o.requires:

.PHONY : src/dist_tracing/CMakeFiles/disttracing.dir/TracerPlugin.cc.o.requires

src/dist_tracing/CMakeFiles/disttracing.dir/TracerPlugin.cc.o.provides: src/dist_tracing/CMakeFiles/disttracing.dir/TracerPlugin.cc.o.requires
	$(MAKE) -f src/dist_tracing/CMakeFiles/disttracing.dir/build.make src/dist_tracing/CMakeFiles/disttracing.dir/TracerPlugin.cc.o.provides.build
.PHONY : src/dist_tracing/CMakeFiles/disttracing.dir/TracerPlugin.cc.o.provides

src/dist_tracing/CMakeFiles/disttracing.dir/TracerPlugin.cc.o.provides.build: src/dist_tracing/CMakeFiles/disttracing.dir/TracerPlugin.cc.o


src/dist_tracing/CMakeFiles/disttracing.dir/Carrier.cc.o: src/dist_tracing/CMakeFiles/disttracing.dir/flags.make
src/dist_tracing/CMakeFiles/disttracing.dir/Carrier.cc.o: ../src/dist_tracing/Carrier.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/d/distributed-tracing-example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/dist_tracing/CMakeFiles/disttracing.dir/Carrier.cc.o"
	cd /home/d/distributed-tracing-example/build/src/dist_tracing && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/disttracing.dir/Carrier.cc.o -c /home/d/distributed-tracing-example/src/dist_tracing/Carrier.cc

src/dist_tracing/CMakeFiles/disttracing.dir/Carrier.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/disttracing.dir/Carrier.cc.i"
	cd /home/d/distributed-tracing-example/build/src/dist_tracing && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/d/distributed-tracing-example/src/dist_tracing/Carrier.cc > CMakeFiles/disttracing.dir/Carrier.cc.i

src/dist_tracing/CMakeFiles/disttracing.dir/Carrier.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/disttracing.dir/Carrier.cc.s"
	cd /home/d/distributed-tracing-example/build/src/dist_tracing && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/d/distributed-tracing-example/src/dist_tracing/Carrier.cc -o CMakeFiles/disttracing.dir/Carrier.cc.s

src/dist_tracing/CMakeFiles/disttracing.dir/Carrier.cc.o.requires:

.PHONY : src/dist_tracing/CMakeFiles/disttracing.dir/Carrier.cc.o.requires

src/dist_tracing/CMakeFiles/disttracing.dir/Carrier.cc.o.provides: src/dist_tracing/CMakeFiles/disttracing.dir/Carrier.cc.o.requires
	$(MAKE) -f src/dist_tracing/CMakeFiles/disttracing.dir/build.make src/dist_tracing/CMakeFiles/disttracing.dir/Carrier.cc.o.provides.build
.PHONY : src/dist_tracing/CMakeFiles/disttracing.dir/Carrier.cc.o.provides

src/dist_tracing/CMakeFiles/disttracing.dir/Carrier.cc.o.provides.build: src/dist_tracing/CMakeFiles/disttracing.dir/Carrier.cc.o


# Object files for target disttracing
disttracing_OBJECTS = \
"CMakeFiles/disttracing.dir/TracerPlugin.cc.o" \
"CMakeFiles/disttracing.dir/Carrier.cc.o"

# External object files for target disttracing
disttracing_EXTERNAL_OBJECTS =

lib/libdisttracing.a: src/dist_tracing/CMakeFiles/disttracing.dir/TracerPlugin.cc.o
lib/libdisttracing.a: src/dist_tracing/CMakeFiles/disttracing.dir/Carrier.cc.o
lib/libdisttracing.a: src/dist_tracing/CMakeFiles/disttracing.dir/build.make
lib/libdisttracing.a: src/dist_tracing/CMakeFiles/disttracing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/d/distributed-tracing-example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library ../../lib/libdisttracing.a"
	cd /home/d/distributed-tracing-example/build/src/dist_tracing && $(CMAKE_COMMAND) -P CMakeFiles/disttracing.dir/cmake_clean_target.cmake
	cd /home/d/distributed-tracing-example/build/src/dist_tracing && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/disttracing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/dist_tracing/CMakeFiles/disttracing.dir/build: lib/libdisttracing.a

.PHONY : src/dist_tracing/CMakeFiles/disttracing.dir/build

src/dist_tracing/CMakeFiles/disttracing.dir/requires: src/dist_tracing/CMakeFiles/disttracing.dir/TracerPlugin.cc.o.requires
src/dist_tracing/CMakeFiles/disttracing.dir/requires: src/dist_tracing/CMakeFiles/disttracing.dir/Carrier.cc.o.requires

.PHONY : src/dist_tracing/CMakeFiles/disttracing.dir/requires

src/dist_tracing/CMakeFiles/disttracing.dir/clean:
	cd /home/d/distributed-tracing-example/build/src/dist_tracing && $(CMAKE_COMMAND) -P CMakeFiles/disttracing.dir/cmake_clean.cmake
.PHONY : src/dist_tracing/CMakeFiles/disttracing.dir/clean

src/dist_tracing/CMakeFiles/disttracing.dir/depend:
	cd /home/d/distributed-tracing-example/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/d/distributed-tracing-example /home/d/distributed-tracing-example/src/dist_tracing /home/d/distributed-tracing-example/build /home/d/distributed-tracing-example/build/src/dist_tracing /home/d/distributed-tracing-example/build/src/dist_tracing/CMakeFiles/disttracing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/dist_tracing/CMakeFiles/disttracing.dir/depend

