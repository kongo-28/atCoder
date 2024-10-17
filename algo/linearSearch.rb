nums = gets.split.map(&:to_i)

puts nums.to_s

#### flagを定義 ####
exist = false

nums.each do |num|
  if num == 7
    exist = true
  end
end

if exist
  puts true
else
  puts false
end