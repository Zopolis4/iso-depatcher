@echo off
set arg1=%1
set arg2=%2
echo on
wit.exe extract %1 %~dp1%~n1 -p -v -v -l
wit.exe extract %2 %~dp2patch\%~n2 -p -v -v -l
jdupes.exe -R -d -N %~dp1%~n1 %~dp2patch\%~n2
ROBOCOPY %~dp2patch\%~n2 %~dp2patch\%~n2 /S /MOVE
MOVE %~dp2patch\%~n2 %~dp0
RMDIR /S /Q %~dp1%~n1
RMDIR /S /Q %~dp2patch\