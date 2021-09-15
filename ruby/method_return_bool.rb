#戻り値がboolのメソッド

def exam_pass?(score)
    return score >=60
end


if exam_pass?(50)
    puts("合格です")
else
    puts("不合格です")
end
