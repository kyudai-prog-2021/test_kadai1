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
if test $1 -ne 1
    then
git log --oneline -n 1 | cut -d ' ' -f 1  >>log.txt
fi

if test $result -eq 2
then
    if test $1 -eq 1
    then
        echo 'test1 success'
    else 
        echo 'test1 success'>>log.txt
    fi
    exit 0
else
    if test $1 -eq 1
    then
        echo 'test1 failed'
    else 
        echo 'test1 failed'>>log.txt
    fi
    exit 1
fi