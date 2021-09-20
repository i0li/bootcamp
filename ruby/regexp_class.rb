#Regexpクラスについて

#正規表現オブジェクトを生成
#=== 定義の仕方 ===
#//の中では正規表現を使って文字列を表現できる
/regexp/
Regexp.new("regexp")

#=== マッチング ===
#String#matchメソッドを使う場合
p "abbbc".match(/ab*c/)
p "ac".match(/ab*c/)
p "ac".match(/ab+c/)

#=~を使ってマッチングを行う場合
#マッチした位置のインデックスを返す
p /ab*c/ =~ "abbbc"
p /b*c/ =~ "abbbc"
p /ab+c/ =~ "ac"
