#破壊的メソッド
#対象の変数の値を変更してしますメソッド

#== 通常 ==
string = "あいうえお"
string_change = string.gsub("あいうえお", "アイウエオ")
puts string
puts string_change

#== 破壊的メソッド使用 == 
#str_changeにstrにgsubメソッドを適応したものを代入しているが
#メソッドを適応したstrの値自体を変更していることがわかる

string = "あいうえお"
string_change = string.gsub!("あいうえお", "アイウエオ")
puts string
puts string_change