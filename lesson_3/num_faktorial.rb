#Программа, вычисляющая факториал числа

puts "Input a number:"
a = gets.chomp.to_i

abort "Erroneous input! Try again..." if a <= 0

f = 1
(1..a).each {|i| f *= i}

puts "Factorial of a number #{a} is equal to: #{f}"

