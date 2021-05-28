wit extract %1 %~dpn1 -p -v -v -l
wit extract %2 %~dpn2 -p -v -v -l
jdupes -O -R -d -N %~dpn1 %~dpn2
ROBOCOPY %~dpn2 %~dpn2 /S /MOVE
RMDIR /S /Q %~dpn1
