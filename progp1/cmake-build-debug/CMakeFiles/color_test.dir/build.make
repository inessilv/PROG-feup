# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/inessilva_132/Transferências/CLion-2021.2.3/clion-2021.2.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/inessilva_132/Transferências/CLion-2021.2.3/clion-2021.2.3/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/inessilva_132/Transferências/progp1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/inessilva_132/Transferências/progp1/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/color_test.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/color_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/color_test.dir/flags.make

CMakeFiles/color_test.dir/test/color_test.cpp.o: CMakeFiles/color_test.dir/flags.make
CMakeFiles/color_test.dir/test/color_test.cpp.o: ../test/color_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/inessilva_132/Transferências/progp1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/color_test.dir/test/color_test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/color_test.dir/test/color_test.cpp.o -c /home/inessilva_132/Transferências/progp1/test/color_test.cpp

CMakeFiles/color_test.dir/test/color_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color_test.dir/test/color_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/inessilva_132/Transferências/progp1/test/color_test.cpp > CMakeFiles/color_test.dir/test/color_test.cpp.i

CMakeFiles/color_test.dir/test/color_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color_test.dir/test/color_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/inessilva_132/Transferências/progp1/test/color_test.cpp -o CMakeFiles/color_test.dir/test/color_test.cpp.s

# Object files for target color_test
color_test_OBJECTS = \
"CMakeFiles/color_test.dir/test/color_test.cpp.o"

# External object files for target color_test
color_test_EXTERNAL_OBJECTS =

color_test: CMakeFiles/color_test.dir/test/color_test.cpp.o
color_test: CMakeFiles/color_test.dir/build.make
color_test: librgb.a
color_test: lib/libgtestd.a
color_test: lib/libgtest_maind.a
color_test: lib/libgtestd.a
color_test: CMakeFiles/color_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/inessilva_132/Transferências/progp1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable color_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/color_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/color_test.dir/build: color_test
.PHONY : CMakeFiles/color_test.dir/build

CMakeFiles/color_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/color_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/color_test.dir/clean

CMakeFiles/color_test.dir/depend:
	cd /home/inessilva_132/Transferências/progp1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/inessilva_132/Transferências/progp1 /home/inessilva_132/Transferências/progp1 /home/inessilva_132/Transferências/progp1/cmake-build-debug /home/inessilva_132/Transferências/progp1/cmake-build-debug /home/inessilva_132/Transferências/progp1/cmake-build-debug/CMakeFiles/color_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/color_test.dir/depend
