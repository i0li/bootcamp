#メソッドのデフォルト引数とキーワード引数

#== デフォルト引数 == 
def self_intro_d(name="iori", age=21)
    puts("Hi. My name is #{name}. I'm #{age} years old")
end

self_intro_d("sizu",44)


#== キーワード引数 == 
#キーワード引数の方は、デフォルト引数とは違い順番を気にしなくていい
def self_intro_k(name: "iori", age: 21)
    puts("Hi. My name is #{name}. I'm #{age} years old")
end

self_intro_k(name: "yasuhiro",age:45)
