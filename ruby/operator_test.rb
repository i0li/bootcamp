#論理演算子まとめ

a = 5
b = 3

str1 = "sakino"
str2 = "iori"

puts "a=5 , b=3"
puts "str1='sakino' , str2='iori'"

#== 四則演算 ==
#それぞれ代入演算子として使うことができる(a += b , a %= b のように)
print "a + b = "
puts a + b

print "a - b = "
puts a - b 

print "a * b = "
puts a * b

print "a / b = "
puts a / b

#== 代数演算子　==
print "a % b = "
puts a % b

print "a ** b = "
puts a ** b

#== 　文字列比較　==
#非破壊的(元の変数は変更しない)
print "str1 + str2 → "
puts str1 + str2

#破壊的(元の変数も変更してしまう)
print "str1 << str2 → "
puts str1 << str2
print "str1 →"
puts str1

print "str1 *3 → "
puts str1 *3 

#== 比較演算子 ==
#等しければtrue
print "a == b → "
puts a == b

#等しくなければtrue
print "a != b → "
puts a != b

#aがbより大きければtrue
print "a > b → "
puts a > b

#aがb以上であればtrue
print "a >= b → "
puts a >= b

#-- 宇宙船演算子 --
#右 > 左 → -1
#右 < 左 →  1
#右 = 左 →  0
#型が違う → nil
print "a <=> b →"
puts a <=> b