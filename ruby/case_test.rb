#case文
#複数の候補の中で一致するものを探す場合に用いる

fruit = "apple"

case fruit
when "apple" then
  price = 200
when "orange" then
  price = 100
when "grape" then 
  price = 300
end
puts "#{fruit} : ¥#{price}"