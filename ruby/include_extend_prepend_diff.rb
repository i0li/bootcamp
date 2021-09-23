#moduleの「include」「extend」「prepend」違い

#先ほどのmodule
module Greerting
  def morning
    puts "おはよう"
    puts "（module内のmethodが呼び出されました）"
  end

  def afternoon
    puts "こんにちは"
    puts "（module内のmethodが呼び出されました）"
  end

  def night 
    puts "こんばんは"
    puts "（module内のmethodが呼び出されました）"
  end
end

#=== include ===
#moduleをインスタンスメソッドとして呼び出す

#-- インスタンスメソッド --
#生成したインスタンスをレシーバとするメソッド
#生成された個々のインスタンスに対して行うイメージ
puts "--- include"

class Test_include
  include Greerting
end


test_include = Test_include.new
test_include.morning


#=== extend ===
#moduleをクラスメソッドとして呼び出す

#--　クラスメソッド --
#インスタンスを生成せず、クラスをレシーバとするメソッド
#クラス全体で共有されるクラス変数(@@name)を使用するを表示するメソッドなど
#代表例)　クラス名.new
puts "--- extend"

class Test_extend
  extend Greerting
end


Test_extend.morning


#=== prepend ===
#同じメソッド名のものがあった場合moduleの方を優先する
puts "--- prepend"

class Test_include_same_name
  include Greerting

  def morning
    puts "おはよう"
    puts "（class内のmethodが呼び出されました）"
  end
end

test_include_same_name = Test_include_same_name.new
test_include_same_name.morning


class Test_prepend
  prepend Greerting

  def morning
    puts "おはよう"
    puts "（class内のmethodが呼び出されました）"
  end
end

test_prepend = Test_prepend.new
test_prepend.morning