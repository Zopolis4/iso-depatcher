wit extract %1 %~dp1%~n1 -p -v -v -l
wit extract %2 %~dp2%~n2 -p -v -v -l
jdupes -O -R -d -N %~dp1%~n1 %~dp2%~n2
ROBOCOPY %~dp2%~n2 %~dp2%~n2 /S /MOVE
RMDIR /S /Q %~dp1%~n1
