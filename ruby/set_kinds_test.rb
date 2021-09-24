#和集合　差集合　積集合　について

array1 = [1, 2, 3, 4, 5] 
array2 = [3, 4, 5, 6, 7]
puts("array1 : #{array1}")
puts("array2 : #{array2}")
#=== 和集合 ===
puts("---和集合")
p array1 | array2

#=== 差集合 ===
puts("---差集合(array1-array2)")
p array1 - array2

#=== 積集合 ===
puts("---積集合")
p array1 & array2