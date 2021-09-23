#module
#処理だけを一つにまとめたもの。インスタンス変数などがない。

#== 用途 ==
#複数のクラスが存在する場合、その中に同じような処理がある場合
#moduleでひとまとめにしたりして使う
#同じような処理を毎回書くよりも一まとめにしてそこから持ってくる方がわかりやすい


#== クラスとの違い ==
#インスタンスを作れない。継承ができない。


#module名の一文字目は大文字
module Greerting
  def morning
    puts "おはよう"
  end

  def afternoon
    puts "こんにちは"
  end

  def night 
    puts "こんばんは"
  end
end

class Test1
  include Greerting
end

class Test2
  include Greerting
end

test1 = Test1.new
test2 = Test2.new

test1.morning
test2.morning