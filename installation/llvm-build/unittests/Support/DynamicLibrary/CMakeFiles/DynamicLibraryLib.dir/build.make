# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/pablo/Unreal3/AirSim/llvm-source-50

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pablo/Unreal3/AirSim/llvm-build

# Include any dependencies generated for this target.
include unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/depend.make

# Include the progress variables for this target.
include unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/progress.make

# Include the compile flags for this target's objects.
include unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/flags.make

unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.o: unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/flags.make
unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.o: /home/pablo/Unreal3/AirSim/llvm-source-50/unittests/Support/DynamicLibrary/ExportedFuncs.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pablo/Unreal3/AirSim/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.o"
	cd /home/pablo/Unreal3/AirSim/llvm-build/unittests/Support/DynamicLibrary && /usr/bin/clang++-5.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.o -c /home/pablo/Unreal3/AirSim/llvm-source-50/unittests/Support/DynamicLibrary/ExportedFuncs.cxx

unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.i"
	cd /home/pablo/Unreal3/AirSim/llvm-build/unittests/Support/DynamicLibrary && /usr/bin/clang++-5.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pablo/Unreal3/AirSim/llvm-source-50/unittests/Support/DynamicLibrary/ExportedFuncs.cxx > CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.i

unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.s"
	cd /home/pablo/Unreal3/AirSim/llvm-build/unittests/Support/DynamicLibrary && /usr/bin/clang++-5.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pablo/Unreal3/AirSim/llvm-source-50/unittests/Support/DynamicLibrary/ExportedFuncs.cxx -o CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.s

unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.o.requires:

.PHONY : unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.o.requires

unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.o.provides: unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.o.requires
	$(MAKE) -f unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/build.make unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.o.provides.build
.PHONY : unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.o.provides

unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.o.provides.build: unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.o


# Object files for target DynamicLibraryLib
DynamicLibraryLib_OBJECTS = \
"CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.o"

# External object files for target DynamicLibraryLib
DynamicLibraryLib_EXTERNAL_OBJECTS =

lib/libDynamicLibraryLib.a: unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.o
lib/libDynamicLibraryLib.a: unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/build.make
lib/libDynamicLibraryLib.a: unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pablo/Unreal3/AirSim/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../lib/libDynamicLibraryLib.a"
	cd /home/pablo/Unreal3/AirSim/llvm-build/unittests/Support/DynamicLibrary && $(CMAKE_COMMAND) -P CMakeFiles/DynamicLibraryLib.dir/cmake_clean_target.cmake
	cd /home/pablo/Unreal3/AirSim/llvm-build/unittests/Support/DynamicLibrary && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DynamicLibraryLib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/build: lib/libDynamicLibraryLib.a

.PHONY : unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/build

unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/requires: unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/ExportedFuncs.cxx.o.requires

.PHONY : unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/requires

unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/clean:
	cd /home/pablo/Unreal3/AirSim/llvm-build/unittests/Support/DynamicLibrary && $(CMAKE_COMMAND) -P CMakeFiles/DynamicLibraryLib.dir/cmake_clean.cmake
.PHONY : unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/clean

unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/depend:
	cd /home/pablo/Unreal3/AirSim/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pablo/Unreal3/AirSim/llvm-source-50 /home/pablo/Unreal3/AirSim/llvm-source-50/unittests/Support/DynamicLibrary /home/pablo/Unreal3/AirSim/llvm-build /home/pablo/Unreal3/AirSim/llvm-build/unittests/Support/DynamicLibrary /home/pablo/Unreal3/AirSim/llvm-build/unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittests/Support/DynamicLibrary/CMakeFiles/DynamicLibraryLib.dir/depend

