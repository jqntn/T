call "%ProgramFiles%\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64"
ml64 T.txt /link /nologo && del *.obj *.lnk && T.exe