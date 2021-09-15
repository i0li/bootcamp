#変数と定数の違い

#== 変数 ==
#代入後の自由に変更ができる
var_number = 1
puts(var_number)
var_number = 2
puts(var_number)

#== 定数 ==
#代入した定数に変更を加えようとすると警告表示がされる
#しかし変更はされる
CONST_NUMBER = 1
puts(CONST_NUMBER)
CONST_NUMBER = 2
puts(CONST_NUMBER)

