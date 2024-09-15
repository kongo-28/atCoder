def count_200(n,nums)
  count = 0

  (n-1).times do |i|
    (n-i-1).times do |j|
      if (nums[i]-nums[i+j+1])%200 == 0
        count += 1
      end
    end
  end

  puts count
end


n = gets.to_i
nums_string= gets.split(" ")
nums = []

n.times do |i|
  nums << nums_string[i].to_i
end


count_200(n,nums)





# 問題文
# 200 という整数が大好きなりんごさんのために、次の問題を解いてください。
# N 個の正整数からなる数列 A が与えられるので、以下の条件をすべて満たす整数の組 
# (i,j) の個数を求めてください。

# 1≤i<j≤N
# Ai −Aj は 200 の倍数である。

# 実行速度不足
