#アクセス修飾子
#クラス内に定義されている変数やメソッドのアクセス範囲を限定的にすることができるもの

#アクセス修飾子は３種類ある
# public　→　クラス外からのアクセスを許可する
# private　→ クラス内でのアクセスのみ許可する
# protected　→ クラス外からのアクセスはできない　
#              同じクラスやサブクラスであれば呼び出せる

#先ほど作成したたい焼きクラスを使う
class Taiyaki

  def initialize(taste, price)
    @taste = taste
    @price = price
  end
  
  #何も指定しなければpublicメソッド
  def show_info
    puts "#{@taste}味のたい焼きは#{@price}円です"
  end

  def call_show_info
    #selfをつけても付けなくても呼び出せる
    self.show_info
    show_info
  end

  def call_private_show_cost
    #selfをつけては呼び出せない
    private_show_cost
  end

  def mix_taste(other_taiyaki)
    puts "#{get_taste}と#{other_taiyaki.get_taste}を混ぜました"
  end


  protected
  def get_taste
    @taste
  end


  #これより下のメソッドはpribateメソッド
  private
  def private_show_cost
    puts"使用した材料の原価は100円です"
  end

end  

anko_taiyaki = Taiyaki.new("あんこ", 250)
custard_taiyaki = Taiyaki.new("カスタード", 250)

#anko_taiyaki.taste

puts "----- call_show_info(public)"
anko_taiyaki.call_show_info

puts "----- call_private_show_cost(private)"
anko_taiyaki.call_private_show_cost

puts "----- mix_taste(protected)"
anko_taiyaki.mix_taste(custard_taiyaki)

