#メソッドの可変長長さについて

#可変長引数 : 個数に制限を設けていない引数。配列として認識される。
#可変長引数にするためには引数名に「*」をつける

def favorite_fruit(*fruits)
  puts "#{fruits}" 
end

favorite_fruit("apple" ,"grape" ,"orange")
