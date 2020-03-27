# CMake generated Testfile for 
# Source directory: /Users/leico_studio/Documents/Max 8/Packages/lei/source/projects/lei.hello-world
# Build directory: /Users/leico_studio/Documents/Max 8/Packages/lei/build/source/projects/lei.hello-world
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(lei.hello-world_test "/Users/leico_studio/Documents/Max 8/Packages/lei/tests/lei.hello-world_test")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(lei.hello-world_test "/Users/leico_studio/Documents/Max 8/Packages/lei/tests/lei.hello-world_test")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(lei.hello-world_test "/Users/leico_studio/Documents/Max 8/Packages/lei/tests/MinSizeRel/lei.hello-world_test")
elseif("${CTEST_CONFIGURATION_TYPE}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(lei.hello-world_test "/Users/leico_studio/Documents/Max 8/Packages/lei/tests/RelWithDebInfo/lei.hello-world_test")
else()
  add_test(lei.hello-world_test NOT_AVAILABLE)
endif()
