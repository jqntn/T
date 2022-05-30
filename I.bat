call "%ProgramFiles%\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64"

del I
powershell -command "dumpbin /exports %WinDir%\System32\user32.dll | sls '(?<=0 )[a-z].*' | foreach {ac I $_.matches.value -nonewline; ac I ' proto'}"