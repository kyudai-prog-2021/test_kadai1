#!/bin/sh
rm ./test2 
gcc main.c -o test2

function func(){
input=$(<data2/input.txt)
./test2 << EOF
$input
EOF
}

result=$(func)

if test $result -eq 2
then
    echo 'test2 success'
    exit 0
else
    echo 'test2 failed'
    exit 1
fi