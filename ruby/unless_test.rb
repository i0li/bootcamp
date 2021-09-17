#unless文

a = 10
b = 100

#条件式が時に実行する
puts "#{a} > #{b} "
unless a > b then 
  puts "この条件式は正しくありません"
end

#if文同様elseを使うことができる
#この場合else内の処理は条件式が正しい場合に行われる
puts "#{a} < #{b} "
unless a < b then 
  puts "この条件式は正しくありません"
else
  puts "この条件式は正しいです"
end