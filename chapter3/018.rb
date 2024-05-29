n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

counts = {
  100 => 0,
  200 => 0,
  300 => 0,
  400 => 0,
}

arr.each do |i|
  counts[i] += 1
end

puts counts[100] * counts[400] + counts[200] * counts[300]