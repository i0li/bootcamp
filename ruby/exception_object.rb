#例外オブジェクト
#例外の情報が格納されたオブジェクト

#例外が起こるかもしれない処理
#今回は0除算しているため絶対にエラーが出る
begin 
  puts 4 / 0
#例外の場合にする処理
#=> 名前　で例外オブジェクトを生成する 
rescue => exception
  #例外オブジェクトのクラスを表示
  puts "--- exception.class"
  puts exception.class
  #例外オブジェクトのメッセージを表示
  puts "--- exception.message"
  puts exception.message
  #エラーのバックトレース（至った経緯）を表示
  puts "--- xception.backtrace"
  puts exception.backtrace
end 