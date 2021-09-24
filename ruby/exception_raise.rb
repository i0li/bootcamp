#意図的に例外を発生させる

#raiseメソッドを使う
#引数に文字列を渡すと、その文字列がエラーメッセージになる
#  (引数は省略できるが、原因がわかりやすいようにする)

def greeting(time_zone)
  case time_zone
  when "morning"
    "おはよう"
  when "afternoon"
    "こんにちは"
  when "night"
    "こんばんは"
  else
    #引数がcase文にない場合はraiseメソッドを使って例外とする
    raise "「morning」「afternoon」「night」の中から選んでください"
  end 
end

puts greeting("mignight")