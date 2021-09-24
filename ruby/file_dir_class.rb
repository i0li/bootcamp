#ファイルやディレクトリを扱うクラス


#=== Fileクラス : ファイルアクセスのためのクラス

#openメソッド → 引数に与えたパスのファイルを開く
#readメソッド → ファイルの内容を末尾まで読み込む
puts "--- read"
File.open('open_file.txt') do |file|
  puts file.read
end

#writeメソッド → 文字列を書き込む
#文字列を書き込む場合は第２引数に"a"または"w"を指定する
#"a" →　append 追加書き込み
#"w" →　write 新規書き込み　すでにある内容をクリアにして書き込む
puts "--- write"
File.open('open_file.txt', mode = "a") do |file|
  file.write "\n書き込みました"
end

File.open('open_file.txt') do |file|
  puts file.read
end

#=== Dirクラス : ディレクトリ操作のためのクラス

#カレントディレクトリにtest_dirを作成
#第一引数はディレクトリのパス
#第二引数はパーミッション
puts "--- Dirクラス"
Dir.mkdir('test_dir', 0666)
#カレンディレクトリに先ほど作成したディレクトリがあるか確認
if Dir.exist?('test_dir')
  puts "test_dirは存在します"
else
  puts "test_dirは見つかりませんでした"
end
#ディレクトリのパスを指定して削除
Dir.delete('test_dir')

