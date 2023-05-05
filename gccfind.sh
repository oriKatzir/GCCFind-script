#!/bin/bash
files=()
case $# in
2)
rm -f "$1/"*.out
mapfile -t files < <(find "$1" -maxdepth 1 -type f -name "*.c")
for i in "${files[@]}"
do
if  grep -iqwlE "\b$2\W*" "$i"
then
gcc -w -std=c11 -o "${i%.c}.out" "$i"
fi
done
# find "$1" -maxdepth 1 -type f -name "*.c" -exec grep -il "$2" {} \; -exec gcc -w -std=c11 -o "${file%.c}.out" {} \;
;;
3)
if [ $3=="-r" ]
then
find "$1" -name "*.out" -type f -delete
mapfile -t files < <(find "$1" -type f -name "*.c")
for i in "${files[@]}"
do
if  grep -iqwlE "\b$2\W*" "$i"
then
gcc -w -std=c11 -o "${i%.c}.out" "$i"
fi
done
# find "$1" -type f -name "*.c" -exec grep -riq "$2" {} \; -exec gcc -w -o "${file%.c}.out" {} \;
else
echo "The given flag is not a supported flag"
fi
;;
*)
echo "Not enough parameters"
;;
esac
