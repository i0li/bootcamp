#!/bin/zsh

#if文で"文字列"の比較をする

str="iori"

if [ $str = "iori" ]; then
    echo "等しい"
else 
    echo "ひとしくない"
fi