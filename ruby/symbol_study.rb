#Symbolクラスについて


#ソース上では文字列のように見え、内部では整数として扱われる

#=== 定義の仕方 ===
#:（コロン）を付けて変数名を書く
:symbol_test

#=== 文字列との違い ===
#内部で整数として管理されるため、文字列に比べて早く処理できる
start_time = Time.now
100.times { |x|
  :symbol_test == :symbol_test
}
puts "シンボル処理速度 #{Time.now - start_time}s"

start_time = Time.now
100.times { |x|
  "string_test" == "string_test" 
}
puts "文字列処理速度 #{Time.now - start_time}s"

#文字列とは違い、同じ内容のシンボルは必ず同一のものとなる。
#オブジェクト数が増えないためメモリ使用効率が良くなる.
puts :symbol_test.object_id
puts :symbol_test.object_id

puts "string_test".object_id
puts "string_test".object_id

#変更不可のものなので、文字列のような破壊的な変更ができない
symbol = :symbol_test
#puts symbol.upcase!
#出力　→　undefined method `upcase!' for :symbol_test:Symbol (NoMethodError)

string = "string_test"
puts string.upcase!



