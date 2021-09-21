#論理演算子まとめ

a = true
b = false
puts "a=true , b=false" 

#== ! , not ==
#aがtreuの時はfalseを、falseの時はtrueを返す
print "!a → " 
puts !a 

print "not a → " 
puts (not a) 


#== && , and ==
#aかつbがtrueの時のみtrueを返す
print "a && b → " 
puts a && b 

print "a and b →"
puts (a and b)



#== || , or ==
#aかbがtrue時にtrueを返す
print "a || b → "
puts a || b
print "a or b → "
print (a or b)


#== 論理演算子の優先順位 ==
#puts !number > 20
#論理演算子にも優先順位があるため上のようにしてしまうと「！」がnumberにかかってしまい
#false > 20　となりFalseClassには「>」メソッドはないためエラーになってしまう
#そのため以下のように丸括弧を使う必要がある
number = 10
puts "!(number > 20)"
puts !(number > 20)


#===== 演算子の優先順位 =====
#優先順位高い
# !  ~
# **
# *  /  %
# +  -
# <<  >>
# &
# |  ^
# >  >=  <  <=
# ==  !=
# &&
# ||
# .  ...
# ?:
# =
# not
# and  or
#優先順位低い

#否定を表す「！」や何乗を表す「**」の優先順位が高く
#文字列の「not」や「and」「or」の優先順位が低い
#==========================