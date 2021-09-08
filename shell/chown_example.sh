#!/bin/zsh

#テストファイルを作成
touch test_file.txt

#変更前のファイルの情報を確認
ls -l test_file.txt

#作成したファイルの所有権を変更する
chown someone test_file.txt

#変更後のファイルの情報を確認
ls -l test_file.txt