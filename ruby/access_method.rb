#アクセスメソッド
#インスタンス変数の値を読み書きするメソッド

#先ほど作成したたい焼きクラスを使う
class Taiyaki
  attr_reader :taste
  attr_writer :taste
  def initialize(taste, price)
    @taste = taste
    @price = price
  end

  def show_info
    puts "#{@taste}味のたい焼きは#{@price}円です"
  end
end

anko_taiyaki = Taiyaki.new("あんこ", 250)

#puts anko_taiyaki.taste
#そのままではインスタンス変数にアクセスすることができない

#ここでアクセスメソッドを使用する
#アクセスメソッドには３種類ある
# attr_reader　→ インスタンス変数を取得するためのもの
# attr_writer　→ インスタンス変数に何かの値をセットするためのもの
# attr_accessor　→　上の二つの機能を一つにまとめたもの

#インスタンス変数へのアクセスが可能になったため変更できるようになった
#今回はtasteのみ定義しているため、変更できるのはtasteのみ
puts anko_taiyaki.taste
anko_taiyaki.taste = "カスタード"
anko_taiyaki.show_info