#擬似変数

#self : 現在のメソッドの実行主体
puts(self)

#nil : 何もない状態　出力しても何も表示されない
puts(nil)

#true false : 条件式が正しければtrue、正しくなければfalse
puts(1 == 1)
puts(1 == 2)


#__FILE__ : 現在のソースファイル名
puts(__FILE__)

#__LINE__ : 現在のソースファイル内で何行目にあるか、行番号
puts(__LINE__)

#__ENCODING__ : 現在のソースファイルのスクリプトエンコーディング
puts(__ENCODING__)
