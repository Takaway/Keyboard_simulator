# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.29

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Ajisai\Workspace\Development\C_CPP\Keyboard_simulator\src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Ajisai\Workspace\Development\C_CPP\Keyboard_simulator\build

# Include any dependencies generated for this target.
include CMakeFiles/Keyboard_Simulator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Keyboard_Simulator.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Keyboard_Simulator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Keyboard_Simulator.dir/flags.make

CMakeFiles/Keyboard_Simulator.dir/main.cpp.obj: CMakeFiles/Keyboard_Simulator.dir/flags.make
CMakeFiles/Keyboard_Simulator.dir/main.cpp.obj: C:/Ajisai/Workspace/Development/C_CPP/Keyboard_simulator/src/main.cpp
CMakeFiles/Keyboard_Simulator.dir/main.cpp.obj: CMakeFiles/Keyboard_Simulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Ajisai\Workspace\Development\C_CPP\Keyboard_simulator\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Keyboard_Simulator.dir/main.cpp.obj"
	C:\Ajisai\Dependency\MSYS2\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Keyboard_Simulator.dir/main.cpp.obj -MF CMakeFiles\Keyboard_Simulator.dir\main.cpp.obj.d -o CMakeFiles\Keyboard_Simulator.dir\main.cpp.obj -c C:\Ajisai\Workspace\Development\C_CPP\Keyboard_simulator\src\main.cpp

CMakeFiles/Keyboard_Simulator.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Keyboard_Simulator.dir/main.cpp.i"
	C:\Ajisai\Dependency\MSYS2\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Ajisai\Workspace\Development\C_CPP\Keyboard_simulator\src\main.cpp > CMakeFiles\Keyboard_Simulator.dir\main.cpp.i

CMakeFiles/Keyboard_Simulator.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Keyboard_Simulator.dir/main.cpp.s"
	C:\Ajisai\Dependency\MSYS2\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Ajisai\Workspace\Development\C_CPP\Keyboard_simulator\src\main.cpp -o CMakeFiles\Keyboard_Simulator.dir\main.cpp.s

# Object files for target Keyboard_Simulator
Keyboard_Simulator_OBJECTS = \
"CMakeFiles/Keyboard_Simulator.dir/main.cpp.obj"

# External object files for target Keyboard_Simulator
Keyboard_Simulator_EXTERNAL_OBJECTS =

Keyboard_Simulator.exe: CMakeFiles/Keyboard_Simulator.dir/main.cpp.obj
Keyboard_Simulator.exe: CMakeFiles/Keyboard_Simulator.dir/build.make
Keyboard_Simulator.exe: CMakeFiles/Keyboard_Simulator.dir/linkLibs.rsp
Keyboard_Simulator.exe: CMakeFiles/Keyboard_Simulator.dir/objects1.rsp
Keyboard_Simulator.exe: CMakeFiles/Keyboard_Simulator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Ajisai\Workspace\Development\C_CPP\Keyboard_simulator\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Keyboard_Simulator.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Keyboard_Simulator.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Keyboard_Simulator.dir/build: Keyboard_Simulator.exe
.PHONY : CMakeFiles/Keyboard_Simulator.dir/build

CMakeFiles/Keyboard_Simulator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Keyboard_Simulator.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Keyboard_Simulator.dir/clean

CMakeFiles/Keyboard_Simulator.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Ajisai\Workspace\Development\C_CPP\Keyboard_simulator\src C:\Ajisai\Workspace\Development\C_CPP\Keyboard_simulator\src C:\Ajisai\Workspace\Development\C_CPP\Keyboard_simulator\build C:\Ajisai\Workspace\Development\C_CPP\Keyboard_simulator\build C:\Ajisai\Workspace\Development\C_CPP\Keyboard_simulator\build\CMakeFiles\Keyboard_Simulator.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Keyboard_Simulator.dir/depend

