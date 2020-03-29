# CMake generated Testfile for 
# Source directory: /Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.seq_alt
# Build directory: /Users/leico_studio/Documents/Max 8/Packages/lei/build/source/projects/lei.seq_alt
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(lei.seq_alt_test "/Users/leico_studio/Documents/Max 8/Packages/lei/tests/lei.seq_alt_test")
  set_tests_properties(lei.seq_alt_test PROPERTIES  _BACKTRACE_TRIPLES "/Users/leico_studio/Documents/Max 8/Packages/lei/source/min-api/test/min-object-unittest.cmake;65;add_test;/Users/leico_studio/Documents/Max 8/Packages/lei/source/min-api/test/min-object-unittest.cmake;0;;/Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.seq_alt/CMakeLists.txt;52;include;/Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.seq_alt/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(lei.seq_alt_test "/Users/leico_studio/Documents/Max 8/Packages/lei/tests/lei.seq_alt_test")
  set_tests_properties(lei.seq_alt_test PROPERTIES  _BACKTRACE_TRIPLES "/Users/leico_studio/Documents/Max 8/Packages/lei/source/min-api/test/min-object-unittest.cmake;65;add_test;/Users/leico_studio/Documents/Max 8/Packages/lei/source/min-api/test/min-object-unittest.cmake;0;;/Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.seq_alt/CMakeLists.txt;52;include;/Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.seq_alt/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(lei.seq_alt_test "/Users/leico_studio/Documents/Max 8/Packages/lei/tests/MinSizeRel/lei.seq_alt_test")
  set_tests_properties(lei.seq_alt_test PROPERTIES  _BACKTRACE_TRIPLES "/Users/leico_studio/Documents/Max 8/Packages/lei/source/min-api/test/min-object-unittest.cmake;65;add_test;/Users/leico_studio/Documents/Max 8/Packages/lei/source/min-api/test/min-object-unittest.cmake;0;;/Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.seq_alt/CMakeLists.txt;52;include;/Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.seq_alt/CMakeLists.txt;0;")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(lei.seq_alt_test "/Users/leico_studio/Documents/Max 8/Packages/lei/tests/RelWithDebInfo/lei.seq_alt_test")
  set_tests_properties(lei.seq_alt_test PROPERTIES  _BACKTRACE_TRIPLES "/Users/leico_studio/Documents/Max 8/Packages/lei/source/min-api/test/min-object-unittest.cmake;65;add_test;/Users/leico_studio/Documents/Max 8/Packages/lei/source/min-api/test/min-object-unittest.cmake;0;;/Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.seq_alt/CMakeLists.txt;52;include;/Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.seq_alt/CMakeLists.txt;0;")
else()
  add_test(lei.seq_alt_test NOT_AVAILABLE)
endif()
