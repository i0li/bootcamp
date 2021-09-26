class Draw_tree_from_path_data
  #初期設定　出力するファイルと読み込むファイルを設定
  def initialize(output_file, files_path_data)
    @output_file = File.open("#{output_file}","w")
    @files_path_data = File.open("#{files_path_data}","r")
  end

  #change_stringからもらった行をoutput_fileに書き込む
  def draw_on_file
    @files_path_data.each_line { |line|
      @output_file.write(change_string(line))
    }
  end

  #与えられた行をtree状になるように変換
  def change_string(string)
    #行の中の「/」を数える
    number_of_hyphen = string.count('/')

    #output_fileは今だけ使っているファイルなので表示しない
    return "" if string == "output_file\n"
    #一番上のディレクトリは変換する必要がないため、そのまま表示
    return "\n● " + string  if number_of_hyphen == 0

    #下にディレクトリがあるものは変換した文字列にする
    #パスの最後のファイル名の部分を正規表現を使って取得　test_dir/test_file → test_file
    file_name = string[/\/([^\/]*[a-zA-Z_0-9]$)/, 1]
    #tree状になるように文字列を変換
    draw_string = + "    |"*number_of_hyphen + "-- " + file_name
    return draw_string + "\n"
  end

  #開けたファイルを閉じる
  def close_files
    @output_file.close
    @files_path_data.close
  end
end

#与えられた引数をわかりやすい名前にする
output_file = ARGV[0]
files_path_data = ARGV[1]

#実行部分
tree = Draw_tree_from_path_data.new(output_file, files_path_data)
tree.draw_on_file
tree.close_files