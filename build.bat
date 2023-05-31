@echo off

if not exist "build" (
	mkdir "build"
)

pushd "build"
set compiler_flags=/nologo /W3 /Zi
set linker_flags=/incremental:no /opt:ref /opt:icf /WX
call cl %compiler_flags% ../main.c /link %linker_flags%
popd
