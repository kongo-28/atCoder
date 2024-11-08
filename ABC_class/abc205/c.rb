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

