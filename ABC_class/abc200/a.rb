def century_judge(year)
  century = ((year-1) / 100)  +1
  puts century
end

year = gets().to_i
century_judge(year)



# 問題文
# 西暦 N 年は何世紀ですか？

# 制約
# 1≤N≤3000

# 入力
# 入力は以下の形式で標準入力から与えられる。
# N

# 出力
# 答えを整数として出力せよ。