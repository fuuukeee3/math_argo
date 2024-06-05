n = gets.chomp.to_i
h = gets.chomp.split(" ").map(&:to_i)

dp = Array.new(n + 1) { 0 }
h.unshift(0)

(1..n).each do |i|
  if i == 1
    dp[i] = 0
  end

  if i == 2
    dp[i] = dp[i - 1] + (h[i] - h[i - 1]).abs
  end

  if i >= 3
    tmp1 = dp[i - 1] + (h[i] - h[i - 1]).abs
    tmp2 = dp[i - 2] + (h[i] - h[i - 2]).abs
    dp[i] = [tmp1, tmp2].min
  end
end

puts dp.last
