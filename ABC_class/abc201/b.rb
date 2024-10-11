# AtCoder国には N 個の山があり、i 個目の山の名前は Si, 高さは Tiです。
# 2 番目に高い山の名前を答えてください。
# N 個の山の名前、高さはそれぞれ相異なることが保証されます。

mounts_count = gets.to_i
mounts = []
mounts_count.times do
  mount = gets.split(" ")
  mount[1] = mount[1].to_i
  mounts << mount
end


############ 昇順にバブルソート ###################
j=0
(mounts_count-1).times do
  i = 0
  (mounts_count-1-j).times do
    if mounts[i][1] < mounts[i+1][1]
      mounts[i] , mounts[i+1] = mounts[i+1] , mounts[i]
    end
    i += 1
  end
  j += 1
end

puts mounts[1][0].to_s