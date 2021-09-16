#break と　return の違い

#break : 現在のループを一つ抜ける
def loop_break
    3.times do |i|
        puts("===#{i}")
        3.times do |j|
            break if j==1
            p j
        end
    end
end

puts("break")
loop_break


#return : 現在のメソッド自体から抜ける
def loop_return
    3.times do |i|
        puts("===#{i}")
        3.times do |j|
            return if j==1
            p j
        end
    end
end

puts("return")
loop_return

#【break】
# loop1 | loop2
#       |   ↓
#       | break
#       ↙︎
#   ↓   |

#【return】
# loop1 | loop2
#       |   ↓
#       | return
# --------------