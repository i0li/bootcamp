#if文の戻り値について


#複数処理がある場合、一番最後のものが戻り値となる
score = 80

result = 
  if score >= 60
    "great!"
    "pass"
  else
    "bad"
    "failure"
  end

puts result
