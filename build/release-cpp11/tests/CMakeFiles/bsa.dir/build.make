# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/muduo_server_learn-master/src/mmuduo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/muduo_server_learn-master/src/mmuduo/build/release-cpp11

# Include any dependencies generated for this target.
include tests/CMakeFiles/bsa.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/bsa.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/bsa.dir/flags.make

tests/CMakeFiles/bsa.dir/bsa.cc.o: tests/CMakeFiles/bsa.dir/flags.make
tests/CMakeFiles/bsa.dir/bsa.cc.o: ../../tests/bsa.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/muduo_server_learn-master/src/mmuduo/build/release-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/bsa.dir/bsa.cc.o"
	cd /root/muduo_server_learn-master/src/mmuduo/build/release-cpp11/tests && /opt/rh/devtoolset-9/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bsa.dir/bsa.cc.o -c /root/muduo_server_learn-master/src/mmuduo/tests/bsa.cc

tests/CMakeFiles/bsa.dir/bsa.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bsa.dir/bsa.cc.i"
	cd /root/muduo_server_learn-master/src/mmuduo/build/release-cpp11/tests && /opt/rh/devtoolset-9/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/muduo_server_learn-master/src/mmuduo/tests/bsa.cc > CMakeFiles/bsa.dir/bsa.cc.i

tests/CMakeFiles/bsa.dir/bsa.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bsa.dir/bsa.cc.s"
	cd /root/muduo_server_learn-master/src/mmuduo/build/release-cpp11/tests && /opt/rh/devtoolset-9/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/muduo_server_learn-master/src/mmuduo/tests/bsa.cc -o CMakeFiles/bsa.dir/bsa.cc.s

# Object files for target bsa
bsa_OBJECTS = \
"CMakeFiles/bsa.dir/bsa.cc.o"

# External object files for target bsa
bsa_EXTERNAL_OBJECTS =

bin/bsa: tests/CMakeFiles/bsa.dir/bsa.cc.o
bin/bsa: tests/CMakeFiles/bsa.dir/build.make
bin/bsa: tests/CMakeFiles/bsa.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/muduo_server_learn-master/src/mmuduo/build/release-cpp11/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/bsa"
	cd /root/muduo_server_learn-master/src/mmuduo/build/release-cpp11/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bsa.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/bsa.dir/build: bin/bsa

.PHONY : tests/CMakeFiles/bsa.dir/build

tests/CMakeFiles/bsa.dir/clean:
	cd /root/muduo_server_learn-master/src/mmuduo/build/release-cpp11/tests && $(CMAKE_COMMAND) -P CMakeFiles/bsa.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/bsa.dir/clean

tests/CMakeFiles/bsa.dir/depend:
	cd /root/muduo_server_learn-master/src/mmuduo/build/release-cpp11 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/muduo_server_learn-master/src/mmuduo /root/muduo_server_learn-master/src/mmuduo/tests /root/muduo_server_learn-master/src/mmuduo/build/release-cpp11 /root/muduo_server_learn-master/src/mmuduo/build/release-cpp11/tests /root/muduo_server_learn-master/src/mmuduo/build/release-cpp11/tests/CMakeFiles/bsa.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/bsa.dir/depend

