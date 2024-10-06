長さ3の数列 
# A=(A1,A2,A3) が与えられます。
# A を適切に並び替えて等差数列にすることはできますか？
# 即ち、A3−A2=A2−A1 を満たすように 
# A を並び替えることはできますか？

# array = gets.split(" ").map(&:to_i)
a_1, a_2, a_3 = gets.split.map(&:to_i)

a = (a_1 - a_2).abs
b = (a_2 - a_3).abs
c = (a_3 - a_1).abs

if a==0 && b==0 && c==0
  puts "Yes"
elsif (a==b || b==c || c==a) && (a!=0 && b!=0 && c!=0)
  puts "Yes"
else
  puts "No"
end