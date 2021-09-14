#!/bin/zsh

#- 1 -　
#カレントディレクトリにディレクトリ作成
mkdir child-directory-a child-directory-b

#- 2 -　
#ファイルを作成して動かす
touch test.sh && mv test.sh child-directory-a

#"child-directory-a"に移動してtest.shを"child-directory-b"へ移動させる
cd child-directory-a 
mv test.sh ../child-directory-b

#"child-directory-b"に移動してtest.shを親ディレクトリへ移動させる
cd ../child-directory-b
mv test.sh ../
