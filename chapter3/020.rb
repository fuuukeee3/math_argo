n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

count = 0
(0...n).each do |i|
  ((i+1)...n).each do |j|
    ((j+1)...n).each do |k|
      ((k+1)...n).each do |l|
        ((l+1)...n).each do |m|
          count += 1 if arr[i] + arr[j] + arr[k] + arr[l] + arr[m] == 1000
        end
      end
    end
  end
end

puts count