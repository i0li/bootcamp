#hashの要素の取得

fruits = {"apple" => 200, "grape" => 300}
p fruits

#取得したいバリューのキーを指定（括弧は大括弧）
p fruits["apple"]

#存在しないキーを指定した場合はnilが帰ってくる
p fruits["banana"]
#fetchメソッドを使うとキーがない場合はエラー表示になる
#p fruits.fetch("banana")

#バリューからキーを取得したい場合はkeyメソッドを使う
p fruits.key(200)