#!/bin/zsh
#called_file.shを呼び出す

###########################
#この二つは開いた環境でコマンドを実装する。
#そのため他のスクリプトから変数などにアクセスができる

#「.」を使って実行 コマンドを実装する時のように./が必要
phrase='No Change'
. ./called_file.sh
echo $phrase

#souceコマンドを使って実行
phrase='No Change'
source called_file.sh
echo $phrase

###########################
#この二つは閉じた環境でコマンドを実装する。
#そのため他のスクリプトから変数などへのアクセスができない

#zshコマンドを使って実行
phrase='No Change'
zsh called_file.sh
echo $phrase
###########################

