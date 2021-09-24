#独自の例外クラス

#自作した例外クラス
#StandardErrorクラスを継承（内容を引きついたで後から上書きしていく）したクラス
class MyError < StandardError
  #initializeメソッドでsuperを使って親クラスのinitializeを呼び出し
  #インスタンス変数messageを自分が表示させたい文字列に上書き
  def initialize(message = "エラーが発生しました")
    super(message)
  end
end


begin 
  raise MyError
rescue => exception
  #作成したクラス名が表示される
  puts "--- exception.class"
  puts exception.class
  #上書きしたmessageが表示される
  puts "--- exception.message"
  puts exception.message
  
  puts "--- xception.backtrace"
  puts exception.backtrace
end
