#!/bin/zsh
#引数がokなら標準出力をok.txtにリダイレクト　ngなら標準エラー出力をng.txtにリダイレクト

if [ $1 = "ok" ]; then 
  echo "parameters is ok" >ok.txt
elif [ $1 = "ng" ]; then
  ls x 2> ng.txt
fi 