n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

counts = Array.new(100001) { 0 }
arr.each do |i|
  counts[i] += 1
end

ans = 0
(1..49999).each do |i|
  ans += counts[i] * counts[100000 - i]
end
ans += counts[50000] * (counts[50000] - 1) / 2

puts ans
