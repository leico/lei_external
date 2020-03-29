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


PostBuild.lei.hello-world.Debug:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.hello-world.mxo/Contents/MacOS/lei.hello-world:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.hello-world.mxo/Contents/MacOS/lei.hello-world


PostBuild.lei.hello-world_test.Debug:
PostBuild.mock_kernel.Debug: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.hello-world_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.hello-world_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.hello-world_test


PostBuild.lei.seq_alt.Debug:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.seq_alt.mxo/Contents/MacOS/lei.seq_alt:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/lib/midifile/lib/libmidifile.a
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.seq_alt.mxo/Contents/MacOS/lei.seq_alt


PostBuild.lei.seq_alt_test.Debug:
PostBuild.mock_kernel.Debug: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.seq_alt_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.seq_alt_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/lib/midifile/lib/libmidifile.a
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.seq_alt_test


PostBuild.lei.test.Debug:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.test.mxo/Contents/MacOS/lei.test:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.test.mxo/Contents/MacOS/lei.test


PostBuild.lei.test_test.Debug:
PostBuild.mock_kernel.Debug: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.test_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.test_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.test_test


PostBuild.mock_kernel.Debug:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib


PostBuild.lei.SerialToSimpleControl.Release:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.SerialToSimpleControl.mxo/Contents/MacOS/lei.SerialToSimpleControl:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.SerialToSimpleControl.mxo/Contents/MacOS/lei.SerialToSimpleControl


PostBuild.lei.SerialToSimpleControl_test.Release:
PostBuild.mock_kernel.Release: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.SerialToSimpleControl_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.SerialToSimpleControl_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.SerialToSimpleControl_test


PostBuild.lei.hello-world.Release:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.hello-world.mxo/Contents/MacOS/lei.hello-world:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.hello-world.mxo/Contents/MacOS/lei.hello-world


PostBuild.lei.hello-world_test.Release:
PostBuild.mock_kernel.Release: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.hello-world_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.hello-world_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.hello-world_test


PostBuild.lei.seq_alt.Release:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.seq_alt.mxo/Contents/MacOS/lei.seq_alt:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/lib/midifile/lib/libmidifile.a
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.seq_alt.mxo/Contents/MacOS/lei.seq_alt


PostBuild.lei.seq_alt_test.Release:
PostBuild.mock_kernel.Release: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.seq_alt_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.seq_alt_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/lib/midifile/lib/libmidifile.a
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.seq_alt_test


PostBuild.lei.test.Release:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.test.mxo/Contents/MacOS/lei.test:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.test.mxo/Contents/MacOS/lei.test


PostBuild.lei.test_test.Release:
PostBuild.mock_kernel.Release: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.test_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.test_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.test_test


PostBuild.mock_kernel.Release:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib


PostBuild.lei.SerialToSimpleControl.MinSizeRel:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/MinSizeRel/lei.SerialToSimpleControl.mxo/Contents/MacOS/lei.SerialToSimpleControl:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/MinSizeRel/lei.SerialToSimpleControl.mxo/Contents/MacOS/lei.SerialToSimpleControl


PostBuild.lei.SerialToSimpleControl_test.MinSizeRel:
PostBuild.mock_kernel.MinSizeRel: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.SerialToSimpleControl_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.SerialToSimpleControl_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.SerialToSimpleControl_test


PostBuild.lei.hello-world.MinSizeRel:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/MinSizeRel/lei.hello-world.mxo/Contents/MacOS/lei.hello-world:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/MinSizeRel/lei.hello-world.mxo/Contents/MacOS/lei.hello-world


PostBuild.lei.hello-world_test.MinSizeRel:
PostBuild.mock_kernel.MinSizeRel: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.hello-world_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.hello-world_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.hello-world_test


PostBuild.lei.seq_alt.MinSizeRel:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/MinSizeRel/lei.seq_alt.mxo/Contents/MacOS/lei.seq_alt:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/lib/midifile/lib/libmidifile.a
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/MinSizeRel/lei.seq_alt.mxo/Contents/MacOS/lei.seq_alt


PostBuild.lei.seq_alt_test.MinSizeRel:
PostBuild.mock_kernel.MinSizeRel: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.seq_alt_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.seq_alt_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/libmock_kernel.dylib\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/lib/midifile/lib/libmidifile.a
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.seq_alt_test


PostBuild.lei.test.MinSizeRel:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/MinSizeRel/lei.test.mxo/Contents/MacOS/lei.test:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/MinSizeRel/lei.test.mxo/Contents/MacOS/lei.test


PostBuild.lei.test_test.MinSizeRel:
PostBuild.mock_kernel.MinSizeRel: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.test_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.test_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.test_test


PostBuild.mock_kernel.MinSizeRel:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/libmock_kernel.dylib:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/libmock_kernel.dylib


PostBuild.lei.SerialToSimpleControl.RelWithDebInfo:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/RelWithDebInfo/lei.SerialToSimpleControl.mxo/Contents/MacOS/lei.SerialToSimpleControl:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/RelWithDebInfo/lei.SerialToSimpleControl.mxo/Contents/MacOS/lei.SerialToSimpleControl


PostBuild.lei.SerialToSimpleControl_test.RelWithDebInfo:
PostBuild.mock_kernel.RelWithDebInfo: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.SerialToSimpleControl_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.SerialToSimpleControl_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.SerialToSimpleControl_test


PostBuild.lei.hello-world.RelWithDebInfo:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/RelWithDebInfo/lei.hello-world.mxo/Contents/MacOS/lei.hello-world:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/RelWithDebInfo/lei.hello-world.mxo/Contents/MacOS/lei.hello-world


PostBuild.lei.hello-world_test.RelWithDebInfo:
PostBuild.mock_kernel.RelWithDebInfo: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.hello-world_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.hello-world_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.hello-world_test


PostBuild.lei.seq_alt.RelWithDebInfo:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/RelWithDebInfo/lei.seq_alt.mxo/Contents/MacOS/lei.seq_alt:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/lib/midifile/lib/libmidifile.a
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/RelWithDebInfo/lei.seq_alt.mxo/Contents/MacOS/lei.seq_alt


PostBuild.lei.seq_alt_test.RelWithDebInfo:
PostBuild.mock_kernel.RelWithDebInfo: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.seq_alt_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.seq_alt_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/libmock_kernel.dylib\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/lib/midifile/lib/libmidifile.a
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.seq_alt_test


PostBuild.lei.test.RelWithDebInfo:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/RelWithDebInfo/lei.test.mxo/Contents/MacOS/lei.test:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/RelWithDebInfo/lei.test.mxo/Contents/MacOS/lei.test


PostBuild.lei.test_test.RelWithDebInfo:
PostBuild.mock_kernel.RelWithDebInfo: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.test_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.test_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.test_test


PostBuild.mock_kernel.RelWithDebInfo:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/libmock_kernel.dylib:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/libmock_kernel.dylib




# For each target create a dummy ruleso the target does not have to exist
/Users/leico_studio/Documents/Max\ 8/Packages/lei/lib/midifile/lib/libmidifile.a:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/libmock_kernel.dylib:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/libmock_kernel.dylib:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib:
