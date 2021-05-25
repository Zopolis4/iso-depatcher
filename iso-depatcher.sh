#! /bin/sh
var1=$(echo -n "$(dirname "$1")/";echo "$(basename "$1" | sed 's/\(.*\)\..*/\1/')")
var2=$(echo -n "$(dirname "$2")/patch/";echo "$(basename "$2" | sed 's/\(.*\)\..*/\1/')")
var3=$(dirname $2)
var4=$(echo "$(dirname "$2")/patch")
./wit extract $1 $var1 -p -v -v -l
./wit extract $2 $var2 -p -v -v -l
./jdupes -R -d -N $var1 $var2
find $var2 -type d -empty -delete
mv $var2 $var3
rm -rf $var1
rmdir $var4