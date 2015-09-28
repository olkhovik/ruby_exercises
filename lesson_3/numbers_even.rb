#Программа, вычисляющая сумму целых положительных чётных чисел
#от 1 до введённого и их среднее арифметическое

puts "Введите целое положительное число"
  a = gets.chomp.to_i

abort "Erroneous input! Try again..." if a <= 0

sum = 0.to_i
ev = 0
(1..a).each do |i|
if i % 2 == 0
sum += i
ev += 1
end
end

puts "Sum of the even numbers from 1 to #{a}: #{sum}, Arithmetic average input numbers, M = #{m = sum / ev}"
