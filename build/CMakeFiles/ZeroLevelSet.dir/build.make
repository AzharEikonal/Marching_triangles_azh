# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/azhar/Desktop/marching_squares

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/azhar/Desktop/marching_squares/build

# Include any dependencies generated for this target.
include CMakeFiles/ZeroLevelSet.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ZeroLevelSet.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ZeroLevelSet.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ZeroLevelSet.dir/flags.make

CMakeFiles/ZeroLevelSet.dir/main.cpp.o: CMakeFiles/ZeroLevelSet.dir/flags.make
CMakeFiles/ZeroLevelSet.dir/main.cpp.o: ../main.cpp
CMakeFiles/ZeroLevelSet.dir/main.cpp.o: CMakeFiles/ZeroLevelSet.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/azhar/Desktop/marching_squares/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ZeroLevelSet.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ZeroLevelSet.dir/main.cpp.o -MF CMakeFiles/ZeroLevelSet.dir/main.cpp.o.d -o CMakeFiles/ZeroLevelSet.dir/main.cpp.o -c /home/azhar/Desktop/marching_squares/main.cpp

CMakeFiles/ZeroLevelSet.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ZeroLevelSet.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/azhar/Desktop/marching_squares/main.cpp > CMakeFiles/ZeroLevelSet.dir/main.cpp.i

CMakeFiles/ZeroLevelSet.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ZeroLevelSet.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/azhar/Desktop/marching_squares/main.cpp -o CMakeFiles/ZeroLevelSet.dir/main.cpp.s

# Object files for target ZeroLevelSet
ZeroLevelSet_OBJECTS = \
"CMakeFiles/ZeroLevelSet.dir/main.cpp.o"

# External object files for target ZeroLevelSet
ZeroLevelSet_EXTERNAL_OBJECTS =

ZeroLevelSet: CMakeFiles/ZeroLevelSet.dir/main.cpp.o
ZeroLevelSet: CMakeFiles/ZeroLevelSet.dir/build.make
ZeroLevelSet: _deps/glad-build/libglad.a
ZeroLevelSet: /usr/lib/x86_64-linux-gnu/libOpenGL.so
ZeroLevelSet: _deps/glfw-build/src/libglfw3.a
ZeroLevelSet: /usr/lib/x86_64-linux-gnu/librt.a
ZeroLevelSet: /usr/lib/x86_64-linux-gnu/libm.so
ZeroLevelSet: CMakeFiles/ZeroLevelSet.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/azhar/Desktop/marching_squares/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ZeroLevelSet"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ZeroLevelSet.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ZeroLevelSet.dir/build: ZeroLevelSet
.PHONY : CMakeFiles/ZeroLevelSet.dir/build

CMakeFiles/ZeroLevelSet.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ZeroLevelSet.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ZeroLevelSet.dir/clean

CMakeFiles/ZeroLevelSet.dir/depend:
	cd /home/azhar/Desktop/marching_squares/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/azhar/Desktop/marching_squares /home/azhar/Desktop/marching_squares /home/azhar/Desktop/marching_squares/build /home/azhar/Desktop/marching_squares/build /home/azhar/Desktop/marching_squares/build/CMakeFiles/ZeroLevelSet.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ZeroLevelSet.dir/depend

