# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_SOURCE_DIR = /workspaces/CS225/release-f22/mp_mazes

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/CS225/release-f22/mp_mazes/build

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /workspaces/CS225/release-f22/mp_mazes/build/CMakeFiles /workspaces/CS225/release-f22/mp_mazes/build//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /workspaces/CS225/release-f22/mp_mazes/build/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -P /workspaces/CS225/release-f22/mp_mazes/build/CMakeFiles/VerifyGlobs.cmake
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named test

# Build rule for target.
test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 test
.PHONY : test

# fast build rule for target.
test/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/build
.PHONY : test/fast

#=============================================================================
# Target rules for targets named main

# Build rule for target.
main: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 main
.PHONY : main

# fast build rule for target.
main/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/build
.PHONY : main/fast

#=============================================================================
# Target rules for targets named testdsets

# Build rule for target.
testdsets: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 testdsets
.PHONY : testdsets

# fast build rule for target.
testdsets/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testdsets.dir/build.make CMakeFiles/testdsets.dir/build
.PHONY : testdsets/fast

#=============================================================================
# Target rules for targets named testsquaremaze

# Build rule for target.
testsquaremaze: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 testsquaremaze
.PHONY : testsquaremaze

# fast build rule for target.
testsquaremaze/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testsquaremaze.dir/build.make CMakeFiles/testsquaremaze.dir/build
.PHONY : testsquaremaze/fast

#=============================================================================
# Target rules for targets named lodepng

# Build rule for target.
lodepng: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 lodepng
.PHONY : lodepng

# fast build rule for target.
lodepng/fast:
	$(MAKE) $(MAKESILENT) -f lib/CMakeFiles/lodepng.dir/build.make lib/CMakeFiles/lodepng.dir/build
.PHONY : lodepng/fast

#=============================================================================
# Target rules for targets named cs225

# Build rule for target.
cs225: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 cs225
.PHONY : cs225

# fast build rule for target.
cs225/fast:
	$(MAKE) $(MAKESILENT) -f lib/CMakeFiles/cs225.dir/build.make lib/CMakeFiles/cs225.dir/build
.PHONY : cs225/fast

#=============================================================================
# Target rules for targets named src

# Build rule for target.
src: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 src
.PHONY : src

# fast build rule for target.
src/fast:
	$(MAKE) $(MAKESILENT) -f src/CMakeFiles/src.dir/build.make src/CMakeFiles/src.dir/build
.PHONY : src/fast

entry/main.o: entry/main.cpp.o
.PHONY : entry/main.o

# target to build an object file
entry/main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/entry/main.cpp.o
.PHONY : entry/main.cpp.o

entry/main.i: entry/main.cpp.i
.PHONY : entry/main.i

# target to preprocess a source file
entry/main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/entry/main.cpp.i
.PHONY : entry/main.cpp.i

entry/main.s: entry/main.cpp.s
.PHONY : entry/main.s

# target to generate assembly for a file
entry/main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/entry/main.cpp.s
.PHONY : entry/main.cpp.s

entry/testdsets.o: entry/testdsets.cpp.o
.PHONY : entry/testdsets.o

# target to build an object file
entry/testdsets.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testdsets.dir/build.make CMakeFiles/testdsets.dir/entry/testdsets.cpp.o
.PHONY : entry/testdsets.cpp.o

entry/testdsets.i: entry/testdsets.cpp.i
.PHONY : entry/testdsets.i

# target to preprocess a source file
entry/testdsets.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testdsets.dir/build.make CMakeFiles/testdsets.dir/entry/testdsets.cpp.i
.PHONY : entry/testdsets.cpp.i

entry/testdsets.s: entry/testdsets.cpp.s
.PHONY : entry/testdsets.s

# target to generate assembly for a file
entry/testdsets.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testdsets.dir/build.make CMakeFiles/testdsets.dir/entry/testdsets.cpp.s
.PHONY : entry/testdsets.cpp.s

entry/testsquaremaze.o: entry/testsquaremaze.cpp.o
.PHONY : entry/testsquaremaze.o

# target to build an object file
entry/testsquaremaze.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testsquaremaze.dir/build.make CMakeFiles/testsquaremaze.dir/entry/testsquaremaze.cpp.o
.PHONY : entry/testsquaremaze.cpp.o

entry/testsquaremaze.i: entry/testsquaremaze.cpp.i
.PHONY : entry/testsquaremaze.i

# target to preprocess a source file
entry/testsquaremaze.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testsquaremaze.dir/build.make CMakeFiles/testsquaremaze.dir/entry/testsquaremaze.cpp.i
.PHONY : entry/testsquaremaze.cpp.i

entry/testsquaremaze.s: entry/testsquaremaze.cpp.s
.PHONY : entry/testsquaremaze.s

# target to generate assembly for a file
entry/testsquaremaze.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/testsquaremaze.dir/build.make CMakeFiles/testsquaremaze.dir/entry/testsquaremaze.cpp.s
.PHONY : entry/testsquaremaze.cpp.s

tests/mazereader.o: tests/mazereader.cpp.o
.PHONY : tests/mazereader.o

# target to build an object file
tests/mazereader.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/mazereader.cpp.o
.PHONY : tests/mazereader.cpp.o

tests/mazereader.i: tests/mazereader.cpp.i
.PHONY : tests/mazereader.i

# target to preprocess a source file
tests/mazereader.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/mazereader.cpp.i
.PHONY : tests/mazereader.cpp.i

tests/mazereader.s: tests/mazereader.cpp.s
.PHONY : tests/mazereader.s

# target to generate assembly for a file
tests/mazereader.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/mazereader.cpp.s
.PHONY : tests/mazereader.cpp.s

tests/test_part1.o: tests/test_part1.cpp.o
.PHONY : tests/test_part1.o

# target to build an object file
tests/test_part1.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/test_part1.cpp.o
.PHONY : tests/test_part1.cpp.o

tests/test_part1.i: tests/test_part1.cpp.i
.PHONY : tests/test_part1.i

# target to preprocess a source file
tests/test_part1.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/test_part1.cpp.i
.PHONY : tests/test_part1.cpp.i

tests/test_part1.s: tests/test_part1.cpp.s
.PHONY : tests/test_part1.s

# target to generate assembly for a file
tests/test_part1.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/test_part1.cpp.s
.PHONY : tests/test_part1.cpp.s

tests/test_part2.o: tests/test_part2.cpp.o
.PHONY : tests/test_part2.o

# target to build an object file
tests/test_part2.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/test_part2.cpp.o
.PHONY : tests/test_part2.cpp.o

tests/test_part2.i: tests/test_part2.cpp.i
.PHONY : tests/test_part2.i

# target to preprocess a source file
tests/test_part2.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/test_part2.cpp.i
.PHONY : tests/test_part2.cpp.i

tests/test_part2.s: tests/test_part2.cpp.s
.PHONY : tests/test_part2.s

# target to generate assembly for a file
tests/test_part2.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/test_part2.cpp.s
.PHONY : tests/test_part2.cpp.s

tests/test_student.o: tests/test_student.cpp.o
.PHONY : tests/test_student.o

# target to build an object file
tests/test_student.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/test_student.cpp.o
.PHONY : tests/test_student.cpp.o

tests/test_student.i: tests/test_student.cpp.i
.PHONY : tests/test_student.i

# target to preprocess a source file
tests/test_student.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/test_student.cpp.i
.PHONY : tests/test_student.cpp.i

tests/test_student.s: tests/test_student.cpp.s
.PHONY : tests/test_student.s

# target to generate assembly for a file
tests/test_student.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/tests/test_student.cpp.s
.PHONY : tests/test_student.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... cs225"
	@echo "... lodepng"
	@echo "... main"
	@echo "... src"
	@echo "... test"
	@echo "... testdsets"
	@echo "... testsquaremaze"
	@echo "... entry/main.o"
	@echo "... entry/main.i"
	@echo "... entry/main.s"
	@echo "... entry/testdsets.o"
	@echo "... entry/testdsets.i"
	@echo "... entry/testdsets.s"
	@echo "... entry/testsquaremaze.o"
	@echo "... entry/testsquaremaze.i"
	@echo "... entry/testsquaremaze.s"
	@echo "... tests/mazereader.o"
	@echo "... tests/mazereader.i"
	@echo "... tests/mazereader.s"
	@echo "... tests/test_part1.o"
	@echo "... tests/test_part1.i"
	@echo "... tests/test_part1.s"
	@echo "... tests/test_part2.o"
	@echo "... tests/test_part2.i"
	@echo "... tests/test_part2.s"
	@echo "... tests/test_student.o"
	@echo "... tests/test_student.i"
	@echo "... tests/test_student.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -P /workspaces/CS225/release-f22/mp_mazes/build/CMakeFiles/VerifyGlobs.cmake
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

