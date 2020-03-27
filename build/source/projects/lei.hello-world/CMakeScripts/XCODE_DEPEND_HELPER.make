# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.lei.hello-world.Debug:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.hello-world.mxo/Contents/MacOS/lei.hello-world:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.hello-world.mxo/Contents/MacOS/lei.hello-world


PostBuild.lei.hello-world_test.Debug:
PostBuild.mock_kernel.Debug: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.hello-world_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.hello-world_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.hello-world_test


PostBuild.lei.hello-world.Release:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.hello-world.mxo/Contents/MacOS/lei.hello-world:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/lei.hello-world.mxo/Contents/MacOS/lei.hello-world


PostBuild.lei.hello-world_test.Release:
PostBuild.mock_kernel.Release: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.hello-world_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.hello-world_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/lei.hello-world_test


PostBuild.lei.hello-world.MinSizeRel:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/MinSizeRel/lei.hello-world.mxo/Contents/MacOS/lei.hello-world:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/MinSizeRel/lei.hello-world.mxo/Contents/MacOS/lei.hello-world


PostBuild.lei.hello-world_test.MinSizeRel:
PostBuild.mock_kernel.MinSizeRel: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.hello-world_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.hello-world_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/lei.hello-world_test


PostBuild.lei.hello-world.RelWithDebInfo:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/RelWithDebInfo/lei.hello-world.mxo/Contents/MacOS/lei.hello-world:
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/externals/RelWithDebInfo/lei.hello-world.mxo/Contents/MacOS/lei.hello-world


PostBuild.lei.hello-world_test.RelWithDebInfo:
PostBuild.mock_kernel.RelWithDebInfo: /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.hello-world_test
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.hello-world_test:\
	/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/libmock_kernel.dylib
	/bin/rm -f /Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/lei.hello-world_test




# For each target create a dummy ruleso the target does not have to exist
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/MinSizeRel/libmock_kernel.dylib:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/RelWithDebInfo/libmock_kernel.dylib:
/Users/leico_studio/Documents/Max\ 8/Packages/lei/tests/libmock_kernel.dylib:
