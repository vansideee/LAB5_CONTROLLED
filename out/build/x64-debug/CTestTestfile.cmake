# CMake generated Testfile for 
# Source directory: D:/lab_OC/Lab5_OC
# Build directory: D:/lab_OC/Lab5_OC/out/build/x64-debug
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(LockTest "D:/lab_OC/Lab5_OC/out/build/x64-debug/run_tests.exe")
set_tests_properties(LockTest PROPERTIES  _BACKTRACE_TRIPLES "D:/lab_OC/Lab5_OC/CMakeLists.txt;37;add_test;D:/lab_OC/Lab5_OC/CMakeLists.txt;0;")
subdirs("_deps/googletest-build")
