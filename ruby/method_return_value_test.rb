#メソッドの戻り値について

def comparison(num1, num2)
  if num1 > num2
    "#{num1} は #{num2}　以上"
  elsif num1 < num2
    "#{num1} は #{num2}　以下"
  else
    "#{num1} と #{num2}　は等しい"
  end
end


puts comparison(5, 3)
