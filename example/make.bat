@echo off
copy build\clean-expanded.sfc build\patched.sfc > NUL
copy ..\Bowspr.ccs Bowspr.ccs > NUL
copy ..\movscr_codes.ccs movscr_codes.ccs > NUL
..\..\ccscript13\ccc.exe --summary summary.txt --no-reset --start f00000 --end f0ffff -o build\patched.sfc example.ccs
del Bowspr.ccs > NUL
del movscr_codes.ccs > NUL
echo Done patching.
