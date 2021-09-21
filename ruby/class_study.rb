#classについて
#「もの」を組み立てる際の設計図を「クラス」と呼ぶ
#設計図から作成した実物体のことを「インスタンス」と呼ぶ

#クラス名の最初の文字は大文字
class Taiyaki

  #インスタンス(クラス名.new)が生成された時に実行されるメソッド 初期設定  
  def initialize(taste, price)
    #インスタンス変数には@をつける
    #インスタンス変数は、インスタンスごとに値を保持することができる
    @taste = taste
    @price = price
  end
  
  #作成したインスタンスから実行できるインスタンスメソッド
  #先ほど代入したインスタンス変数を使って処理を書くことができる
  def show_info
    puts "#{@taste}味のたい焼きは#{@price}円です"
  end
end

#インスタンスを作成した際に私た引数("あんこ", 250)がinitializeでインスタンス変数に代入させれる
anko_taiyaki = Taiyaki.new("あんこ", 250)

#作成したanko_taiyakiのインスタンスからshow_infoインスタンスメソッドを実行する
anko_taiyaki.show_info

#initializeで引数から具体的な物体を作り出して、インスタンスメソッドを付け加えることで
#物体に機能を付け加えていくイメージ