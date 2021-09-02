#!/bin/zsh

#if文で"数値"の比較をする

a=2
b=3

if [ $a > $b ]; then
    echo "bよりaが大きい"
else
    echo "aよりbが大きい"
fi