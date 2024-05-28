n = gets.chomp.to_i

target = Math.sqrt(n).floor

answer = []
(2..target).each do |i|
  loop do
    break if n % i != 0
    n /= i
    answer << i
  end
end

answer << n if n >= 2

puts answer.sort.join(" ")

