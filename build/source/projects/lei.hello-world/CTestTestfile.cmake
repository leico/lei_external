# CMake generated Testfile for 
# Source directory: /Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.hello-world
# Build directory: /Users/leico_studio/Documents/Max 8/Packages/lei/build/source/projects/lei.hello-world
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(lei.hello-world_test "/Users/leico_studio/Documents/Max 8/Packages/lei/tests/lei.hello-world_test")
  set_tests_properties(lei.hello-world_test PROPERTIES  _BACKTRACE_TRIPLES "/Users/leico_studio/Documents/Max 8/Packages/lei/source/min-api/test/min-object-unittest.cmake;65;add_test;/Users/leico_studio/Documents/Max 8/Packages/lei/source/min-api/test/min-object-unittest.cmake;0;;/Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.hello-world/CMakeLists.txt;39;include;/Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.hello-world/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(lei.hello-world_test "/Users/leico_studio/Documents/Max 8/Packages/lei/tests/lei.hello-world_test")
  set_tests_properties(lei.hello-world_test PROPERTIES  _BACKTRACE_TRIPLES "/Users/leico_studio/Documents/Max 8/Packages/lei/source/min-api/test/min-object-unittest.cmake;65;add_test;/Users/leico_studio/Documents/Max 8/Packages/lei/source/min-api/test/min-object-unittest.cmake;0;;/Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.hello-world/CMakeLists.txt;39;include;/Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.hello-world/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(lei.hello-world_test "/Users/leico_studio/Documents/Max 8/Packages/lei/tests/MinSizeRel/lei.hello-world_test")
  set_tests_properties(lei.hello-world_test PROPERTIES  _BACKTRACE_TRIPLES "/Users/leico_studio/Documents/Max 8/Packages/lei/source/min-api/test/min-object-unittest.cmake;65;add_test;/Users/leico_studio/Documents/Max 8/Packages/lei/source/min-api/test/min-object-unittest.cmake;0;;/Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.hello-world/CMakeLists.txt;39;include;/Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.hello-world/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(lei.hello-world_test "/Users/leico_studio/Documents/Max 8/Packages/lei/tests/RelWithDebInfo/lei.hello-world_test")
  set_tests_properties(lei.hello-world_test PROPERTIES  _BACKTRACE_TRIPLES "/Users/leico_studio/Documents/Max 8/Packages/lei/source/min-api/test/min-object-unittest.cmake;65;add_test;/Users/leico_studio/Documents/Max 8/Packages/lei/source/min-api/test/min-object-unittest.cmake;0;;/Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.hello-world/CMakeLists.txt;39;include;/Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.hello-world/CMakeLists.txt;0;")
else()
  add_test(lei.hello-world_test NOT_AVAILABLE)
endif()
