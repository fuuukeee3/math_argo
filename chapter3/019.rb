n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

colors = {
  red: 0,
  yellow: 0,
  blue: 0,
}

arr.each do |i|
  case i
  when 1
    colors[:red] += 1
  when 2
    colors[:yellow] += 1
  when 3
    colors[:blue] += 1
  end
end

red = (colors[:red] * (colors[:red] - 1)) / 2
yellow = (colors[:yellow] * (colors[:yellow] - 1)) / 2
blue = (colors[:blue] * (colors[:blue] - 1)) / 2

puts [red, yellow, blue].sum