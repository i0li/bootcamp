#Rangeについて

#==== 定義 ===
numbers = 1..5
#numbers = Range.new(1, 5)

strings = 'a'..'g'
#strings = Range.new('a', 'z')

#=== 利用例 ===

#繰り返し処理で使う
numbers.each do |number|
  p number
end

#連続した要素の配列を定義するときに使う(可変長引数として与える)
array = [*strings]
p array