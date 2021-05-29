forfiles /p A:\target\directory /m *.* /c "cmd /c A:\path\to\wit\wit.exe extract @file @fname -p -v -v -l "
forfiles /p A:\target\directory /m * /c "cmd if @isdir==TRUE A:\path\to\jdupes\jdupes.exe -O -R -d -N A:\extracted\normal\copy @file"
forfiles /p A:\target\directory /c "cmd /c if @isdir==TRUE ROBOCOPY @file @file /S /MOVE"
