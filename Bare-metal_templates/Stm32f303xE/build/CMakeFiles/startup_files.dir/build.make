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
CMAKE_COMMAND = /usr/local/clion-2020.1.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /usr/local/clion-2020.1.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ignacy/Pulpit/stm32_baremetal

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ignacy/Pulpit/stm32_baremetal/build

# Include any dependencies generated for this target.
include CMakeFiles/startup_files.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/startup_files.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/startup_files.dir/flags.make

CMakeFiles/startup_files.dir/src/startup_stm32f303xe.s.obj: CMakeFiles/startup_files.dir/flags.make
CMakeFiles/startup_files.dir/src/startup_stm32f303xe.s.obj: ../src/startup_stm32f303xe.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ignacy/Pulpit/stm32_baremetal/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building ASM object CMakeFiles/startup_files.dir/src/startup_stm32f303xe.s.obj"
	/usr/bin/arm-none-eabi-gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/startup_files.dir/src/startup_stm32f303xe.s.obj -c /home/ignacy/Pulpit/stm32_baremetal/src/startup_stm32f303xe.s

# Object files for target startup_files
startup_files_OBJECTS = \
"CMakeFiles/startup_files.dir/src/startup_stm32f303xe.s.obj"

# External object files for target startup_files
startup_files_EXTERNAL_OBJECTS =

libstartup_files.a: CMakeFiles/startup_files.dir/src/startup_stm32f303xe.s.obj
libstartup_files.a: CMakeFiles/startup_files.dir/build.make
libstartup_files.a: CMakeFiles/startup_files.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ignacy/Pulpit/stm32_baremetal/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking ASM static library libstartup_files.a"
	$(CMAKE_COMMAND) -P CMakeFiles/startup_files.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/startup_files.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/startup_files.dir/build: libstartup_files.a

.PHONY : CMakeFiles/startup_files.dir/build

CMakeFiles/startup_files.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/startup_files.dir/cmake_clean.cmake
.PHONY : CMakeFiles/startup_files.dir/clean

CMakeFiles/startup_files.dir/depend:
	cd /home/ignacy/Pulpit/stm32_baremetal/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ignacy/Pulpit/stm32_baremetal /home/ignacy/Pulpit/stm32_baremetal /home/ignacy/Pulpit/stm32_baremetal/build /home/ignacy/Pulpit/stm32_baremetal/build /home/ignacy/Pulpit/stm32_baremetal/build/CMakeFiles/startup_files.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/startup_files.dir/depend
