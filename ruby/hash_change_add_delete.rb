#ハッシュに対する要素の変更,追加,削除

fruits = {"apple" => 200, "grape" => 300}
p fruits

puts "---要素の変更---"
fruits["apple"] = 100
p fruits

puts "---要素の追加---"
fruits["melon"] = 800
p fruits 

puts "---要素の削除---"
fruits.delete("grape")
p fruits