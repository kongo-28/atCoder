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

city_number, road_number = gets.split.map(&:to_i)
roads = []

road_number.times do 
  road = gets.split.map(&:to_i)
  roads << road
end

p roads