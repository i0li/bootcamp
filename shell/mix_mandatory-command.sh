#!/bin/zsh

#大分市のホームページのファイルを取得し作成たファイルがあるか探す
curl "https://www.city.oita.oita.jp" > oita.html && find oita.html

#作成したファイルを探す
find oita.html

#「緊急」という文字が入っている行を取得
grep "緊急" oita.html

#最後の5行を表示
tail -n 5 oita.html

#ファイルを実行可能ファイル変更
chmod +x oita.html

#バックグラウンドでsleepを実行
sleep 10 & 
#バックグラウンドで動いてることを確認
ps
