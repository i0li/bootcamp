#next redo について

#next : 処理をその時だけスキップする。現在のループからは抜けない
def loop_next
    3.times do |i|
        puts("===#{i}")
        3.times do |j|
            next if j == 1 
            p j
        end
    end
end

puts("next")
loop_next

#redo :　同じブロック内の処理をもう一度実行する
#jが１の時だけ処理を３回やり直す
def loop_redo
    3.times do |i|
        puts("===#{i}")
        count = 0
        3.times do |j|
            p j
            if j == 1 && count < 3 
                count += 1
                redo
            end
        end
    end
end

puts("redo")
loop_redo

#単純に「繰り返し変数==1」のような条件式だと無限ループ(無限繰り返し)をしてしまう
#redoの影響を受けない(リセットされない)変数を使って条件式を作る必要がある