# 数X を Y 回掛けたものを「X の Y 乗」といい、
# pow(X,Y) で表します。 例えば 
# pow(2,3)=2×2×2=8 です。

# 3 つの整数 
# A,B,C が与えられるので、
# pow(A,C) と 
# pow(B,C) の大小を比較してください。

# pow(A,C)<pow(B,C) なら < を、
# pow(A,C)>pow(B,C) なら > を、
# pow(A,C)=pow(B,C) なら = を出力せよ。

a, b, c = gets.split.map(&:to_i)
a_c = a
b_c = b


(c-1).times do 
  a_c *= a
  b_c *= b
end

if a_c < b_c
  puts "<"
elsif a_c > b_c
  puts ">"
else
  puts "="
end


puts "#{a}の#{c}乗は#{a_c}"
puts "#{b}の#{c}乗は#{b_c}"