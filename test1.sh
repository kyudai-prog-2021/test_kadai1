#!/bin/sh
rm ./test1 
gcc main.c -o test1

function func(){
input=$(<data1/input.txt)
./test1 << EOF
$input
EOF
}

result=$(func)

if test $result -eq 2
then
    echo 'test1 success'
    exit 0
else
    echo 'test2 failed'
    exit 1
fi