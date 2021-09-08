#!/bin/zsh
#今まで勉強した linux command を組み合わせたスクリプトを作成する（これまで勉強したものを組み合わせて）

mkdir test

cd test
echo "作成したtestディレクトリへ移動"
pwd


for i in $(seq 1 5); do 
  touch file$i.txt
done

echo "作成したファイル"
ls 

cd ..
echo "前のディレクトリへ戻る"
pwd

echo "作成したディレクトリ削除"
rm -rf test


