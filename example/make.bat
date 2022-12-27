@echo off
copy build\clean-expanded.sfc build\patched.sfc > NUL
copy ..\Bowspr.ccs Bowspr.ccs > NUL
..\..\ccscript13\ccc.exe --summary summary.txt --no-reset --start f00000 --end f0ffff -o build\patched.sfc example.ccs
echo Done patching.
