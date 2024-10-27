# 0,1,6,8,9からなる文字列Sが与えられます。

# Sを180度回転したものを出力してください。すなわち、
# S に次の操作を施してできる文字列を出力してください。

# S を反転する。
# 0を0に1を1に6を9に8を8に9を6に変換する。

string = gets.chomp.split("")
new_string = []

# 180°反転
string.length.times do |i|
  if string[string.length-i-1] == "6"
    new_string << "9"
  elsif string[string.length-i-1] == "9"
    new_string << "6"
  else
    new_string << string[string.length-i-1]
  end
end

# 出力
new_string.each do |a|
  print a
end
print "\n"
