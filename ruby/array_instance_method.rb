#numbersクラスのインスタンスメソッドについて

numbers = [1, 2, 3]
p numbers
#dup : 配列の内容をコピーする
puts "---dup"
numbers = [1, 2, 3]
numbers_copy = numbers.dup

p numbers, numbers_copy

#count : 引数がない場合は要素数を、引数がある場合は引数と合致する数を返す
puts "---count"
numbers = [1, 2, 3]
p numbers.count
#2の数を数える
p numbers.count(2)
#奇数の数を数える
p numbers.count { |number| number % 2 == 1 }

#all? : 全ての要素が真であればtrueを返す
#全てが正であればtrueを返す
puts "---all?"
numbers = [1, 2, 3]
p numbers.all? { |number| number > 0 }

#any? : どれか一つが真であればtrueを返す
#どれか一つが偶数であればtrueを返す
puts "---any" 
numbers = [1, 2, 3]
p numbers.any? { |number| number % 2 == 0 }

#max : 配列の中で最大のものを返す。
#引数を与えると、大きい順の配列(サイズは引数分)のものを返す
puts "---max" 
numbers = [1, 2, 3]
p numbers.max
p numbers.max(2)

#min : 配列の中で最小のものを返す
#引数を与えると、小さい順の配列(サイズは引数分)のものを返す
puts "---min"
numbers = [1, 2, 3]
p numbers.min
p numbers.min(2)

#reverse : 順番を逆にする
puts "---reverse"
numbers = [1, 2, 3]
p numbers.reverse

#sum : 配列内の要素の合計を返す
puts "---sum"
numbers  = [1, 2, 3]
p numbers.sum
#初期値を5として、それに配列の要素を加算していく
p numbers.sum(5)

#sort : 配列内をソートする
#"a","b","c"などの文字列などでもソートしてくれる
puts "---sort"
numbers = [8, 2, 5]
p numbers
p numbers.sort
