# 10^100+1 個の村があり、それぞれ村0, 村1,…, 村10^100
# と番号がついています。
# 0 以上 10^100-1 以下の全ての整数 i について、
# 村 i で 1 円を払う事で村(i+1)に移動することができます。 
# それ以外の移動方法はありません。

# 太郎君は初め 
# K 円を持った状態で村 0 におり、
# その後、可能な限り大きな番号の村まで進もうとします。
# 太郎君には N 人の友達がいます。
# i 人目の友達は村 Ai にいて、太郎君が村 Ai に着いたときに 
# Bi 円を太郎君に渡します。
# 太郎君が最終的にたどり着く村の番号を求めてください。

##################### 入力の取得 #######################
friends_number, money = gets.split.map(&:to_i)

# puts "友達は#{friends_number}人"
# puts "お金は#{money}円"

friends = []

friends_number.times do
  a,b = gets.split.map(&:to_i)
  friends << [a,b]
end

#######################################################
position = 0

while money >= 1
  money -= 1
  position += 1

  friends.each do |friend|
    if position == friend[0]
      money += friend[1]
    end
  end
end

puts position


