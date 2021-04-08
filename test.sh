#!/bin/sh
N=2

echo '=============================='>>log.txt
for ((i=1;i<=N;i++))
do 
flag=$(bash test$i.sh)
echo $flag
done

echo '=============================='>>log.txt