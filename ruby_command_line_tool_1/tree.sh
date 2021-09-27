##!/bin/zsh

if [ "$1" = "" ]
then
  echo "探索する階層を指定してください"
  exit 1
fi

if [ "$2" != "h" ] && [ "$2" != "" ] 
then
  echo "そのような引数はありません。 使える引数は'h'のみです"
  exit 1
fi

hidden_mode=false
if [ "$2" = "h" ]
then
  hidden_mode=true
fi

#出力用のファイル
touch output_file

#カレントディレクトリに存在するファイルを指定された深さ分表示
#その後ファイルに書き込む
find * -maxdepth $1 > files_path_data

#rubyで処理をする
ruby tree_process.rb output_file files_path_data $hidden_mode

#結果を出力
cat output_file
#使い終わったため削除
rm output_file files_path_data