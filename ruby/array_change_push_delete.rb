#配列の変更、追加、削除

array = [10, 20, 30, 40, 50]
p array
#=== 配列の変更 ===
puts "---変更"
#index指定
array[0] = 0
p array

#範囲指定
array[0..1] = [100, 200]
p array

#=== 配列の追加 ===
puts "---追加"
array = [10, 20, 30, 40, 50]

#末尾に追加
array.push(40)
array << 40
p array

array.unshift(0)
p array

#=== 配列の削除 ===
puts "---削除"
array = [10, 20, 30, 40, 50]

array.delete(10)
p array

array.delete_at(0)
p array

array.shift
p array

array.slice!(0, 2)
p array