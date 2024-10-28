# 高橋君が 
# 3 つのサイコロを振ったところそれぞれ 
# a,b,c の目が出ました。

# a,b,c のうちある 2 つが同じときは残りの 
# 1 つのサイコロの目を、
# 同じものがないときは 0 を出力してください。
def dice_judge(a,b,c)

  if a==b
    return c

  elsif b==c 
    return a

  elsif c==a
    return b
  
  else
    return 0
  end

end

a,b,c = gets.split.map(&:to_i)
puts dice_judge(a,b,c)

