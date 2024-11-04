# AtCoder 国には 1 から N の番号がついた 
# N 個の都市と、
# 1 から M の番号がついた 
# M 個の道路があります。

# 道路 i を通ると都市AiからBiへ
# 移動することができます。都市 
# Biから都市Aiへの通行はできません。

# ピューマは、どこかの都市からスタートし、
# 0 本以上の道路を使い移動して、
# どこかの都市をゴールとするような旅行の計画を
# 立てようとしています。

# スタート地点とゴール地点の都市の組として
# 考えられるものは何通りありますか？

########### 再帰関数を定義 ################
def serch_roads(i,j)
  @roads.each do |road|
    if road[0] == i
      if road[1] == j
        @count += 1
        puts "再帰的countした!!!"
        return
      else
        serch_roads(road[1],j)
      end
    end
  end
end
########### 再帰関数を定義 ################

city_number, road_number = gets.split.map(&:to_i)
@roads = []

road_number.times do 
  road = gets.split.map(&:to_i)
  @roads << road
end

p @roads

i = 1
j = 1
@count = 0 

while i <= city_number
  j = 1

  while j <= city_number

    puts "(#{i}, #{j})"

    if i == j
      @count += 1
      puts "countした"
    else    ##### i != j の場合 #####
      serch_roads(i,j)
    end

    j += 1
  end
  i += 1
end

puts "count = #{@count}"
