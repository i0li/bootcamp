##!/bin/zsh

if [ "$1" = "" ]
then
  echo "no argument"
  exit 1
fi

#出力用のファイル
touch output_file

#カレントディレクトリに存在するファイルを指定された深さ分表示
#その後ファイルに書き込む
find * -maxdepth $1 > files_path_data

#rubyで処理をする
ruby tree_process.rb output_file files_path_data

#結果を出力
cat output_file
#使い終わったため削除
rm output_file files_path_data