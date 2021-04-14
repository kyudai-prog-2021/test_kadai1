#!/bin/sh
N=2

for ((i=1;i<=N;i++))
do 
bash test$i.sh
done

git add -A
git commit -m 'commit'
git push origin main