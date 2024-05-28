def gcd(a, b)
  loop do
    if a.zero? || b.zero?
      break
    end

    if a > b
      a = a % b
    else
      b = b % a
    end
  end

  a.zero? ? b : a
end

def lcm(a, b)
  (a * b) / gcd(a, b)
end

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i).sort

a = arr.shift
loop do
  break if arr.size.zero?
  b = arr.shift

  a = lcm(a, b)
end

puts a
