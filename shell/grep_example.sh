#!/bin/zsh

#作成したtest.txtファイルの中から「i」の文字がある行を取り出す
echo -e " abcdefg \n hijklmn \n opqrstu \n vwxyz" > test.sh
grep i test.sh
