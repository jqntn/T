call "%ProgramFiles%\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64"

del inc.txt
powershell -command "dumpbin /exports %WinDir%\System32\user32.dll | sls '(?<=0 )[a-z].*' | foreach {ac inc.txt $_.matches.value -nonewline; ac inc.txt ' proto'}"