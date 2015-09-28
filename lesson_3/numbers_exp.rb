#Программа запрашивает у пользователя число
#и вычисляет сумму степеней до этого числа включительно
#и выводит эту сумму на экран.

puts "Input a number:"
a = gets.chomp.to_i

abort "Erroneous input! Try again..." if a <= 0

sum = 0
(1..a).each do |i|
sum += ( i ** i )
end

puts "Sum of the exp. numbers from 1 to #{a}: #{sum}"
