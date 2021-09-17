#Arrayクラスのインスタンスメソッドについて

array = [1, 2, 3]
p array
#dup : 配列の内容をコピーする
puts "---dup"
array = [1, 2, 3]
array_copy = array.dup

p array, array_copy

#count : 引数がない場合は要素数を、引数がある場合は引数と合致する数を返す
puts "---count"
arrary = [1, 2, 3]
p array.count
#2の数を数える
p array.count(2)
#奇数の数を数える
p array.count { |x| x % 2 == 1 }

#all? : 全ての要素が真であればtrueを返す
#全てが正であればtrueを返す
puts "---all?"
arrary = [1, 2, 3]
p array.all? { |x| x > 0 }

#any? : どれか一つが真であればtrueを返す
#どれか一つが偶数であればtrueを返す
puts "---any" 
arrary = [1, 2, 3]
p array.any? { |x| x % 2 == 0 }

#max : 配列の中で最大のものを返す。
#引数を与えると、大きい順の配列(サイズは引数分)のものを返す
puts "---max" 
arrary = [1, 2, 3]
p array.max
p array.max(2)

#min : 配列の中で最小のものを返す
#引数を与えると、小さい順の配列(サイズは引数分)のものを返す
puts "---min"
array = [1, 2, 3]
p array.min
p array.min(2)

#reverse : 順番を逆にする
puts "---reverse"
array = [1, 2, 3]
p array.reverse

#sum : 配列内の要素の合計を返す
puts "---sum"
array  = [1, 2, 3]
p array.sum
#初期値を5として、それに配列の要素を加算していく
p array.sum(5)

#sort : 配列内をソートする
#"a","b","c"などの文字列などでもソートしてくれる
puts "---sort"
array = [8 , 2, 5]
p array
p array.sort
