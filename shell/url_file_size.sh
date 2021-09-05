#!/bin/zsh
#指定したファイルのサイズを取得します

if [ "$1" = "" ] ; then
  echo "このシェルスクリプトは引数に与えたurlのファイルのサイズを表示します\n引数にファイルのサイズを取得したいurlを指定してください"
else
  #実行の際に表示される文字を表示しないようにする
  curl -o target "$1" 2> /dev/null 
  echo "取得したファイルのサイズ" 
  #lsコマンドの出力からサイズが表示されている部分だけを抽出
  ls -lh target | awk '{print $5}' 
  rm target
fi






