# 1 以上 N 以下の整数からなる長さ N の数列 
# A=(A1,A2,…,AN) が与えられます。
# A が 
# (1,2,…,N) の並び替えによって得られるかどうか判定してください。

n = gets.to_i
array = gets.split.map(&:to_i)

count = 0
n.times do |i|
  if array.include?(i+1)
    count += 1
  end
end

if count == n
  puts "Yes"
else
  puts "No"
end