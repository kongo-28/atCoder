def func(m,n)
  if n == m
    ### 初項
    return m

  end

  
  return n + func(m,n-1)

end
puts "初項を入力してください"
m = gets.to_i
puts "最終項を入力してください"
n = gets.to_i
puts func(m,n)