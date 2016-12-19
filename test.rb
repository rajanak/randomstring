require 'benchmark'
time = Benchmark.measure do
  arry=Array.new
  puts "Enter the length of string"
  n = gets.chomp.to_i	
  string = (0...n).map { ('a'..'z').to_a[rand(26)] }
  0.upto(n).flat_map { |n| string.to_a.combination(n).map(&:join)}.each do |c|
    arry.push(c.chars.permutation.map &:join )
  end
  puts arry
  permut = arry.flatten
  puts "Dictionary words"
  words = File.read("/usr/share/dict/words").split
  result = words & permut
  puts result
end
puts time
