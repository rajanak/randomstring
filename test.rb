arry=Array.new
puts "Enter the length of string"
n = gets.chomp.to_i
string = (0...n).map { ('a'..'z').to_a[rand(26)] }
puts string

