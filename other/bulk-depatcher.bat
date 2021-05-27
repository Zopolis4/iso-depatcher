wit extract %1 %~dp1%~n1 -p -v -v -l
jdupes -O -R -d -N drive:extracted\unpatched\game %~dp2%~n2
ROBOCOPY %~dp2%~n2 %~dp2%~n2 /S /MOVE