call "%ProgramFiles%\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64"

del I

powershell -command "sls -path T.txt '(?<=lib )[a-z].*' | foreach {dumpbin /exports %WinDir%\System32\$($_.matches.value).dll | sls '(?<=\S{1,3} \S{7}0 )\S*' | foreach {ac I $_.matches.value -nonewline; ac I ' proto'}}"