#!/bin/zsh

#配列を使用する

array=(1 2 3 4 5)

for i in ${array[@]};
do
    echo ${i}
done