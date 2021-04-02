#!/bin/sh
rm ./test1 
gcc main.c -o test1

function func(){
./test1 << EOF
1
EOF
}

result=$(func input)

if test $result -eq 2
then
    echo 'success'
else
    exit 1
fi