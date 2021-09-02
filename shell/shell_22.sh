#!/bin/zsh

#if文とfor文を利用した処理をする

for ((i=1;i<=5;i++));
do 
    if [ `expr $i % 2` = 0 ]; then
        echo "偶数"
    else
        echo "奇数"
    fi
done