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
include CMakeFiles/script_test.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/script_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/script_test.dir/flags.make

CMakeFiles/script_test.dir/test/script_test.cpp.o: CMakeFiles/script_test.dir/flags.make
CMakeFiles/script_test.dir/test/script_test.cpp.o: ../test/script_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/inessilva_132/Transferências/progp1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/script_test.dir/test/script_test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/script_test.dir/test/script_test.cpp.o -c /home/inessilva_132/Transferências/progp1/test/script_test.cpp

CMakeFiles/script_test.dir/test/script_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/script_test.dir/test/script_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/inessilva_132/Transferências/progp1/test/script_test.cpp > CMakeFiles/script_test.dir/test/script_test.cpp.i

CMakeFiles/script_test.dir/test/script_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/script_test.dir/test/script_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/inessilva_132/Transferências/progp1/test/script_test.cpp -o CMakeFiles/script_test.dir/test/script_test.cpp.s

# Object files for target script_test
script_test_OBJECTS = \
"CMakeFiles/script_test.dir/test/script_test.cpp.o"

# External object files for target script_test
script_test_EXTERNAL_OBJECTS =

script_test: CMakeFiles/script_test.dir/test/script_test.cpp.o
script_test: CMakeFiles/script_test.dir/build.make
script_test: librgb.a
script_test: lib/libgtestd.a
script_test: lib/libgtest_maind.a
script_test: lib/libgtestd.a
script_test: CMakeFiles/script_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/inessilva_132/Transferências/progp1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable script_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/script_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/script_test.dir/build: script_test
.PHONY : CMakeFiles/script_test.dir/build

CMakeFiles/script_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/script_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/script_test.dir/clean

CMakeFiles/script_test.dir/depend:
	cd /home/inessilva_132/Transferências/progp1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/inessilva_132/Transferências/progp1 /home/inessilva_132/Transferências/progp1 /home/inessilva_132/Transferências/progp1/cmake-build-debug /home/inessilva_132/Transferências/progp1/cmake-build-debug /home/inessilva_132/Transferências/progp1/cmake-build-debug/CMakeFiles/script_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/script_test.dir/depend

