#! /bin/sh
var1=$(echo -n "$(dirname "$1")/";echo "$(basename "$1" | sed 's/\(.*\)\..*/\1/')")
./wit extract $1 $var1 -p -v -v -l
./jdupes -O -R -d -N /path/to/extracted/normal/copy $var1
find $var1 -type d -empty -delete
