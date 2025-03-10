#参照渡し , 値わたし

#値渡しは、変数の値をコピーする
#参照渡しは、変数のメモリ番地を渡す
#Rubyは値渡しで処理を行う


#この例であれば、参照渡しの場合はplus_oneメソッドに変数を与えて、その変数に対して
#変更が加えられると、元の変数も変更される
#しかし、今回の場合はx,yは変更されていないため値渡しであることがわかる
def plus_one(a, b)
  a += 1 
  b += 1
end

x = 10
y = 20
plus_one(x, y)
puts x
puts y


#しかし文字列の場合、破壊的メソッドを使った場合参照渡しのような振る舞いをする
#str2での変更がstr1にほ反映されている
puts "参照渡し"
string1 = "hello"
string2 = string1
string3 = string2 << " iori"
puts string1
puts string2
puts string3

#破壊的メソッドを使わなければ値渡し
puts "値渡し"
string1 = "hello"
string2 = string1
string3 = string2 + " iori"
puts string1
puts string2
puts string3