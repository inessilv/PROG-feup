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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/inessilva_132/Transferências/progp1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/inessilva_132/Transferências/progp1/build

# Include any dependencies generated for this target.
include CMakeFiles/image_dump.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/image_dump.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/image_dump.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/image_dump.dir/flags.make

CMakeFiles/image_dump.dir/programs/image_dump.cpp.o: CMakeFiles/image_dump.dir/flags.make
CMakeFiles/image_dump.dir/programs/image_dump.cpp.o: ../programs/image_dump.cpp
CMakeFiles/image_dump.dir/programs/image_dump.cpp.o: CMakeFiles/image_dump.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/inessilva_132/Transferências/progp1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/image_dump.dir/programs/image_dump.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/image_dump.dir/programs/image_dump.cpp.o -MF CMakeFiles/image_dump.dir/programs/image_dump.cpp.o.d -o CMakeFiles/image_dump.dir/programs/image_dump.cpp.o -c /home/inessilva_132/Transferências/progp1/programs/image_dump.cpp

CMakeFiles/image_dump.dir/programs/image_dump.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/image_dump.dir/programs/image_dump.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/inessilva_132/Transferências/progp1/programs/image_dump.cpp > CMakeFiles/image_dump.dir/programs/image_dump.cpp.i

CMakeFiles/image_dump.dir/programs/image_dump.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/image_dump.dir/programs/image_dump.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/inessilva_132/Transferências/progp1/programs/image_dump.cpp -o CMakeFiles/image_dump.dir/programs/image_dump.cpp.s

# Object files for target image_dump
image_dump_OBJECTS = \
"CMakeFiles/image_dump.dir/programs/image_dump.cpp.o"

# External object files for target image_dump
image_dump_EXTERNAL_OBJECTS =

image_dump: CMakeFiles/image_dump.dir/programs/image_dump.cpp.o
image_dump: CMakeFiles/image_dump.dir/build.make
image_dump: librgb.a
image_dump: CMakeFiles/image_dump.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/inessilva_132/Transferências/progp1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable image_dump"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/image_dump.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/image_dump.dir/build: image_dump
.PHONY : CMakeFiles/image_dump.dir/build

CMakeFiles/image_dump.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/image_dump.dir/cmake_clean.cmake
.PHONY : CMakeFiles/image_dump.dir/clean

CMakeFiles/image_dump.dir/depend:
	cd /home/inessilva_132/Transferências/progp1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/inessilva_132/Transferências/progp1 /home/inessilva_132/Transferências/progp1 /home/inessilva_132/Transferências/progp1/build /home/inessilva_132/Transferências/progp1/build /home/inessilva_132/Transferências/progp1/build/CMakeFiles/image_dump.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/image_dump.dir/depend

