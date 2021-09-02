#!/bin/zsh
#今まで勉強した以外の linux command を組み合わせたスクリプトを作成する

mkdir test

cd test
echo "作成したtestディレクトリへ移動 "
pwd
echo "\n"

echo "ファイルを作成"
touch myname.txt
ls
echo "\n"

echo "ファイルに「Iori」を書き込み"
echo "Iori" >> myname.txt
echo "ファイルを表示"
cat myname.txt
echo "\n"

echo "ファイルに「Sakino」を追加"
echo "Sakino" >> myname.txt
echo "ファイルを表示"
cat myname.txt
echo "\n"

echo "ディレクトリごと削除"
cd .. 
rm -rf test
