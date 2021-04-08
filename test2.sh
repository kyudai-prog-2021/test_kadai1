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
    if test $1 -eq 1
    then
        echo 'test2 success'
    else 
        echo 'test2 success'>>log.txt
    fi
    exit 0
else
    if test $1 -eq 1
    then
        echo 'test2 failed'
    else 
        echo 'test2 failed'>>log.txt
    fi
    exit 1
fi