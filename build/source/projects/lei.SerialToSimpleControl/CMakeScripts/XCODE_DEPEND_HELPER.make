# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.lei.SerialToSimpleControl.Debug:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.SerialToSimpleControl.mxo/Contents/MacOS/lei.SerialToSimpleControl:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.SerialToSimpleControl.mxo/Contents/MacOS/lei.SerialToSimpleControl


PostBuild.lei.SerialToSimpleControl_test.Debug:
PostBuild.mock_kernel.Debug: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.SerialToSimpleControl_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.SerialToSimpleControl_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.SerialToSimpleControl_test


PostBuild.lei.SerialToSimpleControl.Release:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.SerialToSimpleControl.mxo/Contents/MacOS/lei.SerialToSimpleControl:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.SerialToSimpleControl.mxo/Contents/MacOS/lei.SerialToSimpleControl


PostBuild.lei.SerialToSimpleControl_test.Release:
PostBuild.mock_kernel.Release: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.SerialToSimpleControl_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.SerialToSimpleControl_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.SerialToSimpleControl_test


PostBuild.lei.SerialToSimpleControl.MinSizeRel:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/MinSizeRel/lei.SerialToSimpleControl.mxo/Contents/MacOS/lei.SerialToSimpleControl:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/MinSizeRel/lei.SerialToSimpleControl.mxo/Contents/MacOS/lei.SerialToSimpleControl


PostBuild.lei.SerialToSimpleControl_test.MinSizeRel:
PostBuild.mock_kernel.MinSizeRel: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.SerialToSimpleControl_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.SerialToSimpleControl_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.SerialToSimpleControl_test


PostBuild.lei.SerialToSimpleControl.RelWithDebInfo:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/RelWithDebInfo/lei.SerialToSimpleControl.mxo/Contents/MacOS/lei.SerialToSimpleControl:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/RelWithDebInfo/lei.SerialToSimpleControl.mxo/Contents/MacOS/lei.SerialToSimpleControl


PostBuild.lei.SerialToSimpleControl_test.RelWithDebInfo:
PostBuild.mock_kernel.RelWithDebInfo: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.SerialToSimpleControl_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.SerialToSimpleControl_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.SerialToSimpleControl_test




# For each target create a dummy ruleso the target does not have to exist
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/libmock_kernel.dylib:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/libmock_kernel.dylib:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib:
