n = gets.chomp.to_i
dp = Array.new(n + 1) { 0 }
dp[0] = 1
dp[1] = 1
(2..n).each do |i|
  dp[i] = dp[i - 1] + dp[i - 2]
end

puts dp.last