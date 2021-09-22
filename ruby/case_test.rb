#case文
#複数の候補の中で一致するものを探す場合に用いる

fruit = "apple"

price = 
  case fruit
  when "apple"
    200
  when "orange" 
    100
  when "grape" 
    300
  end
puts "#{fruit} : ¥#{price}"