# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/wangxt/workspace/projects/cuda-learning

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wangxt/workspace/projects/cuda-learning/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/global_add_vector.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/global_add_vector.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/global_add_vector.dir/flags.make

tests/CMakeFiles/global_add_vector.dir/global_add_vector_generated_global_add_vector.cu.o: tests/CMakeFiles/global_add_vector.dir/global_add_vector_generated_global_add_vector.cu.o.depend
tests/CMakeFiles/global_add_vector.dir/global_add_vector_generated_global_add_vector.cu.o: tests/CMakeFiles/global_add_vector.dir/global_add_vector_generated_global_add_vector.cu.o.Debug.cmake
tests/CMakeFiles/global_add_vector.dir/global_add_vector_generated_global_add_vector.cu.o: ../tests/global_add_vector.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/wangxt/workspace/projects/cuda-learning/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building NVCC (Device) object tests/CMakeFiles/global_add_vector.dir/global_add_vector_generated_global_add_vector.cu.o"
	cd /home/wangxt/workspace/projects/cuda-learning/build/tests/CMakeFiles/global_add_vector.dir && /usr/bin/cmake -E make_directory /home/wangxt/workspace/projects/cuda-learning/build/tests/CMakeFiles/global_add_vector.dir//.
	cd /home/wangxt/workspace/projects/cuda-learning/build/tests/CMakeFiles/global_add_vector.dir && /usr/bin/cmake -D verbose:BOOL=$(VERBOSE) -D build_configuration:STRING=Debug -D generated_file:STRING=/home/wangxt/workspace/projects/cuda-learning/build/tests/CMakeFiles/global_add_vector.dir//./global_add_vector_generated_global_add_vector.cu.o -D generated_cubin_file:STRING=/home/wangxt/workspace/projects/cuda-learning/build/tests/CMakeFiles/global_add_vector.dir//./global_add_vector_generated_global_add_vector.cu.o.cubin.txt -P /home/wangxt/workspace/projects/cuda-learning/build/tests/CMakeFiles/global_add_vector.dir//global_add_vector_generated_global_add_vector.cu.o.Debug.cmake

# Object files for target global_add_vector
global_add_vector_OBJECTS =

# External object files for target global_add_vector
global_add_vector_EXTERNAL_OBJECTS = \
"/home/wangxt/workspace/projects/cuda-learning/build/tests/CMakeFiles/global_add_vector.dir/global_add_vector_generated_global_add_vector.cu.o"

x86_64/bin/global_add_vector: tests/CMakeFiles/global_add_vector.dir/global_add_vector_generated_global_add_vector.cu.o
x86_64/bin/global_add_vector: tests/CMakeFiles/global_add_vector.dir/build.make
x86_64/bin/global_add_vector: /usr/local/cuda/lib64/libcublas.so
x86_64/bin/global_add_vector: /usr/local/cuda/lib64/libcudart_static.a
x86_64/bin/global_add_vector: /usr/lib/x86_64-linux-gnu/librt.so
x86_64/bin/global_add_vector: /usr/local/cuda/lib64/libcusparse.so
x86_64/bin/global_add_vector: /usr/local/cuda/lib64/libcudart_static.a
x86_64/bin/global_add_vector: /usr/lib/x86_64-linux-gnu/librt.so
x86_64/bin/global_add_vector: /usr/local/cuda/lib64/libcusparse.so
x86_64/bin/global_add_vector: tests/CMakeFiles/global_add_vector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wangxt/workspace/projects/cuda-learning/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../x86_64/bin/global_add_vector"
	cd /home/wangxt/workspace/projects/cuda-learning/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/global_add_vector.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/global_add_vector.dir/build: x86_64/bin/global_add_vector

.PHONY : tests/CMakeFiles/global_add_vector.dir/build

tests/CMakeFiles/global_add_vector.dir/clean:
	cd /home/wangxt/workspace/projects/cuda-learning/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/global_add_vector.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/global_add_vector.dir/clean

tests/CMakeFiles/global_add_vector.dir/depend: tests/CMakeFiles/global_add_vector.dir/global_add_vector_generated_global_add_vector.cu.o
	cd /home/wangxt/workspace/projects/cuda-learning/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wangxt/workspace/projects/cuda-learning /home/wangxt/workspace/projects/cuda-learning/tests /home/wangxt/workspace/projects/cuda-learning/build /home/wangxt/workspace/projects/cuda-learning/build/tests /home/wangxt/workspace/projects/cuda-learning/build/tests/CMakeFiles/global_add_vector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/global_add_vector.dir/depend

