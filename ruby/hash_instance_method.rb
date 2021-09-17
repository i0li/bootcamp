#hashクラスのインスタンスメソッド


#=== Hash[*key_and_value] ===
#配列をhashにする。引数は必ず偶数。奇数番目がキー,偶数番目がバリュー
array = [1, "a", 2, "b", 3, "c"]
p Hash[*array]

#=== 大小記号 ===
hash1 = {"a" => 1, "b" => 2}
hash2 = {"a" => 1, "b" => 2, "c" => 3}
#完全に含まれていればtrue。同値はfalse
p hash1 < hash2
p hash1 > hash2
p hash1 < hash1
#含まれている、あるいは同値であればture
p hash1 <= hash2
p hash1 <= hash1

#=== clear ===
#中身を空にする
hash = {"a" => 1, "b" => 2}
hash.clear
p hash

#=== compact ===
#hashからnilを取り除いたhashを生成して返す
hash = {"a" => 1, "b" => nil, "c" => 3}
p hash.compact

#=== update ===
#ハッシュ同士を合体して重複したものは引数の方のhashの値を優先する
hash1 = {"a" => 1, "b" => 2, "c" => 3}
hash2 = {"b" => 20, "c" => 30, "d" => 40}

hash1.update(hash2)
p hash1
