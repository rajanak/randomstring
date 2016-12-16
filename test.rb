arry=Array.new
puts "Enter the length of string"
n = gets.chomp.to_i
string = (0...n).map { ('a'..'z').to_a[rand(26)] }
1.upto(n).flat_map { |n| string.to_a.combination(n).map(&:join)}.each do |c|
  puts c
end

