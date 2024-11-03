# N 本の木があり、 
# i 番目の木にはAi個の木の実が実っています。

# シマリスは、次のルールで全ての木から木の実を収穫します。

# 実っている木の実が 
# 10 個以下の木からは木の実を収穫しない
# 実っている木の実が 
# 10 個より多い木からは、
# 10 個を残して残りの全てを収穫する
# シマリスが収穫する木の実の個数の合計を求めてください。

tree_number = gets.to_i
trees = gets.split.map(&:to_i)


count = 0

trees.each do |tree|
  if tree >= 11
    count += tree -10
  end
end

puts count