#hashの繰り返し処理

fruits = {"apple" => 200, "grape" => 300}
p fruits

#== each ==
#キーとバリューそれぞれをブロック内に渡す
fruits.each { |fruit_key, fruit_value|
  puts "#{fruit_key}一つの値段は#{fruit_value}円です"
}

#== each_key ==
#キーだけをブロック内に渡して処理を繰り返す
fruits.each_key { |fruit_key|
  puts fruit_key
}

#== each_value ==
#バリューだけをブロック内に渡して処理を繰り返す
fruits.each_value { |fruit_value|
  puts fruit_value
}

