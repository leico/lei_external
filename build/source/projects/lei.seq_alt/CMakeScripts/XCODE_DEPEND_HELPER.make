# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
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




# For each target create a dummy ruleso the target does not have to exist
/Users/leico_studio/Documents/Max\ 8/Packages/lei/lib/midifile/lib/libmidifile.a:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/libmock_kernel.dylib:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/libmock_kernel.dylib:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib:
