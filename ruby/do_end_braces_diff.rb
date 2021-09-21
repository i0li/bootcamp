#do...endと{}の違いについて

#do...end は {} よりも結合度が低い

#【*args】可変長引数　引数の数に制限がなく与えることができる
#【block_given?】メソッドにブロックが与えられているかどうかをboolで返す
def f(*args)
  puts "f: args→#{args}, block: #{block_given?}"
  return "f"
end

def b(*args)
  puts "b: args→#{args}, block: #{block_given?}"
  return "b"
end

a = 1
b = 2

puts "---do end" 
#fの引数にはa, b, ブロックの三つが与えられている。結合ができていない
#f a, b do end
# |-----------|
f a, b do end

puts "---{}"
#fの引数にはa, bに{}を与えた戻り値の二つが与えられている。結合ができている
#f a, b {}
# |-||---|
f a, b {}


#以上より
#　●ブロック付きのメソッドの戻り値を引数としたい場合
#　●each文を１行で書く場合 [1,2,3].each {|i| puts i}
#　●メソッドを繋げていくメソッドチェーンをブロック付きのメソッドで行う場合
#　  x.y{}.z{}....
#などの時は {} を使ってブロックを表現する