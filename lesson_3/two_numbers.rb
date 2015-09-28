#Прогамма запрашивает второе число у пользователя
#и вычисляла сумму и среднее арифметическое только для тех
#чисел из последовательности, которые делятся нацело (без остатка) на второе число

puts "Введите целое положительное число A:"
a = gets.chomp
puts "Введите второе целое положительное число B:"
b = gets.chomp

abort "Erroneous input! Try again..." if a !~ /\d+/ || b !~ /\d+/
#exit "Erroneous input! Try again..." if (a <= 0)
a = a.to_i
b = b.to_i
sum = 0
c = 0
(1..a).each do |i|
if i % b == 0
sum += i
c += 1
end

end

puts "Sum of the numbers from 1 to #{a},dividing evenly on B: #{sum},
Arithmetic average this numbers, M = #{m = sum.to_i / c}"
