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
CMAKE_SOURCE_DIR = /root/520/blas/cmake-blas

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/520/blas/cmake-blas/build

# Include any dependencies generated for this target.
include CMakeFiles/blas_cmake.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/blas_cmake.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/blas_cmake.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/blas_cmake.dir/flags.make

CMakeFiles/blas_cmake.dir/main.cpp.o: CMakeFiles/blas_cmake.dir/flags.make
CMakeFiles/blas_cmake.dir/main.cpp.o: ../main.cpp
CMakeFiles/blas_cmake.dir/main.cpp.o: CMakeFiles/blas_cmake.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/520/blas/cmake-blas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/blas_cmake.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/blas_cmake.dir/main.cpp.o -MF CMakeFiles/blas_cmake.dir/main.cpp.o.d -o CMakeFiles/blas_cmake.dir/main.cpp.o -c /root/520/blas/cmake-blas/main.cpp

CMakeFiles/blas_cmake.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/blas_cmake.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/520/blas/cmake-blas/main.cpp > CMakeFiles/blas_cmake.dir/main.cpp.i

CMakeFiles/blas_cmake.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/blas_cmake.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/520/blas/cmake-blas/main.cpp -o CMakeFiles/blas_cmake.dir/main.cpp.s

CMakeFiles/blas_cmake.dir/matrix_operations.cpp.o: CMakeFiles/blas_cmake.dir/flags.make
CMakeFiles/blas_cmake.dir/matrix_operations.cpp.o: ../matrix_operations.cpp
CMakeFiles/blas_cmake.dir/matrix_operations.cpp.o: CMakeFiles/blas_cmake.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/520/blas/cmake-blas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/blas_cmake.dir/matrix_operations.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/blas_cmake.dir/matrix_operations.cpp.o -MF CMakeFiles/blas_cmake.dir/matrix_operations.cpp.o.d -o CMakeFiles/blas_cmake.dir/matrix_operations.cpp.o -c /root/520/blas/cmake-blas/matrix_operations.cpp

CMakeFiles/blas_cmake.dir/matrix_operations.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/blas_cmake.dir/matrix_operations.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/520/blas/cmake-blas/matrix_operations.cpp > CMakeFiles/blas_cmake.dir/matrix_operations.cpp.i

CMakeFiles/blas_cmake.dir/matrix_operations.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/blas_cmake.dir/matrix_operations.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/520/blas/cmake-blas/matrix_operations.cpp -o CMakeFiles/blas_cmake.dir/matrix_operations.cpp.s

# Object files for target blas_cmake
blas_cmake_OBJECTS = \
"CMakeFiles/blas_cmake.dir/main.cpp.o" \
"CMakeFiles/blas_cmake.dir/matrix_operations.cpp.o"

# External object files for target blas_cmake
blas_cmake_EXTERNAL_OBJECTS =

blas_cmake: CMakeFiles/blas_cmake.dir/main.cpp.o
blas_cmake: CMakeFiles/blas_cmake.dir/matrix_operations.cpp.o
blas_cmake: CMakeFiles/blas_cmake.dir/build.make
blas_cmake: CMakeFiles/blas_cmake.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/520/blas/cmake-blas/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable blas_cmake"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/blas_cmake.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/blas_cmake.dir/build: blas_cmake
.PHONY : CMakeFiles/blas_cmake.dir/build

CMakeFiles/blas_cmake.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/blas_cmake.dir/cmake_clean.cmake
.PHONY : CMakeFiles/blas_cmake.dir/clean

CMakeFiles/blas_cmake.dir/depend:
	cd /root/520/blas/cmake-blas/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/520/blas/cmake-blas /root/520/blas/cmake-blas /root/520/blas/cmake-blas/build /root/520/blas/cmake-blas/build /root/520/blas/cmake-blas/build/CMakeFiles/blas_cmake.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/blas_cmake.dir/depend

