def factorial(num)
  rtn = 1
  (1..num).each do |i|
    rtn *= i
  end
  rtn
end

n, r = gets.chomp.split(" ").map(&:to_i)
nn = factorial(n)
rr = factorial(r)
nr = factorial(n - r)
puts nn / (rr * nr)
