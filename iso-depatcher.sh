#! /bin/sh
var1=$(echo -n "$(dirname "$1")/";echo "$(basename "$1" | sed 's/\(.*\)\..*/\1/')")
var2=$(echo -n "$(dirname "$2")/";echo "$(basename "$2" | sed 's/\(.*\)\..*/\1/')")
./wit extract $1 $var1 -p -v -v -l
./wit extract $2 $var2 -p -v -v -l
./jdupes -O -R -d -N $var1 $var2
find $var2 -type d -empty -delete
rm -rf $var1
