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
CMAKE_SOURCE_DIR = /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/flags.make

tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.o: tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/flags.make
tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.o: ../tests/test_dbow2VSfbow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.o"
	cd /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.o -c /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/tests/test_dbow2VSfbow.cpp

tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.i"
	cd /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/tests/test_dbow2VSfbow.cpp > CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.i

tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.s"
	cd /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/tests/test_dbow2VSfbow.cpp -o CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.s

tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.o.requires:

.PHONY : tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.o.requires

tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.o.provides: tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/build.make tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.o.provides.build
.PHONY : tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.o.provides

tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.o.provides.build: tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.o


tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.o: tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/flags.make
tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.o: ../tests/dbow2/ScoringObject.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.o"
	cd /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.o -c /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/tests/dbow2/ScoringObject.cpp

tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.i"
	cd /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/tests/dbow2/ScoringObject.cpp > CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.i

tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.s"
	cd /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/tests/dbow2/ScoringObject.cpp -o CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.s

tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.o.requires:

.PHONY : tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.o.requires

tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.o.provides: tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.o.requires
	$(MAKE) -f tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/build.make tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.o.provides.build
.PHONY : tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.o.provides

tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.o.provides.build: tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.o


# Object files for target fbow_test_dbow2VSfbow
fbow_test_dbow2VSfbow_OBJECTS = \
"CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.o" \
"CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.o"

# External object files for target fbow_test_dbow2VSfbow
fbow_test_dbow2VSfbow_EXTERNAL_OBJECTS =

tests/fbow_test_dbow2VSfbow: tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.o
tests/fbow_test_dbow2VSfbow: tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.o
tests/fbow_test_dbow2VSfbow: tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/build.make
tests/fbow_test_dbow2VSfbow: src/libfbow.so.0.0.1
tests/fbow_test_dbow2VSfbow: /usr/local/lib/libopencv_dnn.so.4.2.0
tests/fbow_test_dbow2VSfbow: /usr/local/lib/libopencv_gapi.so.4.2.0
tests/fbow_test_dbow2VSfbow: /usr/local/lib/libopencv_highgui.so.4.2.0
tests/fbow_test_dbow2VSfbow: /usr/local/lib/libopencv_ml.so.4.2.0
tests/fbow_test_dbow2VSfbow: /usr/local/lib/libopencv_objdetect.so.4.2.0
tests/fbow_test_dbow2VSfbow: /usr/local/lib/libopencv_photo.so.4.2.0
tests/fbow_test_dbow2VSfbow: /usr/local/lib/libopencv_stitching.so.4.2.0
tests/fbow_test_dbow2VSfbow: /usr/local/lib/libopencv_video.so.4.2.0
tests/fbow_test_dbow2VSfbow: /usr/local/lib/libopencv_calib3d.so.4.2.0
tests/fbow_test_dbow2VSfbow: /usr/local/lib/libopencv_features2d.so.4.2.0
tests/fbow_test_dbow2VSfbow: /usr/local/lib/libopencv_flann.so.4.2.0
tests/fbow_test_dbow2VSfbow: /usr/local/lib/libopencv_videoio.so.4.2.0
tests/fbow_test_dbow2VSfbow: /usr/local/lib/libopencv_imgcodecs.so.4.2.0
tests/fbow_test_dbow2VSfbow: /usr/local/lib/libopencv_imgproc.so.4.2.0
tests/fbow_test_dbow2VSfbow: /usr/local/lib/libopencv_core.so.4.2.0
tests/fbow_test_dbow2VSfbow: /usr/lib/gcc/x86_64-linux-gnu/7/libgomp.so
tests/fbow_test_dbow2VSfbow: /usr/lib/x86_64-linux-gnu/libpthread.so
tests/fbow_test_dbow2VSfbow: tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable fbow_test_dbow2VSfbow"
	cd /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fbow_test_dbow2VSfbow.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/build: tests/fbow_test_dbow2VSfbow

.PHONY : tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/build

tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/requires: tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/test_dbow2VSfbow.cpp.o.requires
tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/requires: tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/dbow2/ScoringObject.cpp.o.requires

.PHONY : tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/requires

tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/clean:
	cd /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/fbow_test_dbow2VSfbow.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/clean

tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/depend:
	cd /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/tests /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/build /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/build/tests /home/lhk/桌面/SuperPoint_FBOW/Thirdparty/fbow/build/tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/fbow_test_dbow2VSfbow.dir/depend
