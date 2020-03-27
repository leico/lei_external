# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.lei.test.Debug:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.test.mxo/Contents/MacOS/lei.test:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.test.mxo/Contents/MacOS/lei.test


PostBuild.lei.test_test.Debug:
PostBuild.mock_kernel.Debug: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.test_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.test_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.test_test


PostBuild.lei.test.Release:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.test.mxo/Contents/MacOS/lei.test:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.test.mxo/Contents/MacOS/lei.test


PostBuild.lei.test_test.Release:
PostBuild.mock_kernel.Release: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.test_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.test_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.test_test


PostBuild.lei.test.MinSizeRel:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/MinSizeRel/lei.test.mxo/Contents/MacOS/lei.test:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/MinSizeRel/lei.test.mxo/Contents/MacOS/lei.test


PostBuild.lei.test_test.MinSizeRel:
PostBuild.mock_kernel.MinSizeRel: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.test_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.test_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.test_test


PostBuild.lei.test.RelWithDebInfo:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/RelWithDebInfo/lei.test.mxo/Contents/MacOS/lei.test:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/RelWithDebInfo/lei.test.mxo/Contents/MacOS/lei.test


PostBuild.lei.test_test.RelWithDebInfo:
PostBuild.mock_kernel.RelWithDebInfo: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.test_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.test_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.test_test




# For each target create a dummy ruleso the target does not have to exist
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/libmock_kernel.dylib:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/libmock_kernel.dylib:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib:
