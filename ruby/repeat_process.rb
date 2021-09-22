#繰り返し処理

#=== for文 ===
puts "-----for"
for i in [1, 2, 3, 4, 5] do
  p i 
end

puts "---"

for i in 1..5 do
  p i 
end

#=== while文 ===
puts "-----while"
#「do」は省略できる
number = 1
while number <= 5 do
  p number
  number += 1
end

#=== each ===
#配列の繰り返し処理にはfor文ではなくこちらの方が良く使われる
puts "-----each"
[1, 2, 3, 4, 5].each do |number|
  p number
end

#=== until ===
#whileの逆バージョン　条件式がfalseの間処理を繰り返す
puts "-----until" 

number = 1
until number >= 6 do 
  p number
  number += 1
end

#=== loop ===
#breakを使ってループを終了させたに限りループし続ける
puts "-----loop"

number = 1
loop {
  p number 
  if number >= 5 
    break
  end 
  number += 1
}

#=== times ===
#指定した回数分だけループさせる
puts "-----times"


5.times do 
  p "Hello"
end

puts "---"

5.times do |number|
  p(number)
end

#=== upto downto ===
#指定した数に到達するまでループする。その間に変数が一ずつ増加,減少する。
puts "-----upto downto"
1.upto(5) do |number|
  p number
end

puts "---"

5.downto(1) do |number|
  p number
end

#=== step ===
#到達点とステップ幅を指定して繰り返し処理を行うことができる
puts "-----step"
0.1.step(0.5, 0.1) do |number|
  p number 
end


