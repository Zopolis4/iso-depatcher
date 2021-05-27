wit extract %1 %~dp1%~n1 -p -v -v -l
jdupes -O -R -d -N drive:extracted\unpatched\game %~dp1%~n1
ROBOCOPY %~dp1%~n1 %~dp1%~n1 /S /MOVE
