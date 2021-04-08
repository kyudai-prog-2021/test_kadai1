#!/bin/sh
N=2

for ((i=1;i<=N;i++))
do 
flag=$(bash test$i.sh 1)
echo $flag
done
