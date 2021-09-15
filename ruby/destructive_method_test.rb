#破壊的メソッド
#対象の変数の値を変更してしますメソッド

#== 通常 ==
str = "あいうえお"
str_change = str.gsub("あいうえお", "アイウエオ")
puts(str)
puts(str_change)

#== 破壊的メソッド使用 == 
#str_changeにstrにgsubメソッドを適応したものを代入しているが
#メソッドを適応したstrの値自体を変更していることがわかる

str = "あいうえお"
str_change = str.gsub!("あいうえお", "アイウエオ")
puts(str)
puts(str_change)