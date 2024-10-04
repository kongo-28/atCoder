array = []
sum = 0
count = 0

# Nを取得
N = gets.to_i

# 配列を取得
N.times do
    array << gets.to_i
end

# 全組み合わせに対して7の倍数か否かを判定→カウント
i=0
(N-2).times do
    j = i+1
    (N-j-1).times do
        k = j+1
        (N-k).times do
            sum = array[i]+array[j]+array[k]
            if sum %7 == 0
                count += 1
            end
            k += 1
        end        
        j += 1
    end
    i += 1
end

puts count