#Программа, вычисляющая сумму целых положительных чисел
#от 1 до введённого и их среднее арифметическое

puts "Введите целое положительное число"
  a = gets.chomp.to_i

abort "Erroneous input! Try again..." if a <= 0

sum_1 = 0.to_f
for i in (1..a)
sum_1 += i
end

sum_2 = 0.to_f
index = 1
while index <= a do
sum_2 += index
  index += 1
  end

sum_3 = 0.to_f
index = 1
until index > a do
sum_3 += index
  index += 1
  end

sum_4 = 0.to_i
(1..a).each {|i| sum_4 += i}

puts "Sum of the numbers from 1 to #{a} (FOR): #{sum_1}, Arithmetic average input numbers, M = #{m = sum_1 / a}"
puts "Sum of the numbers from 1 to #{a} (WHILE): #{sum_2}, Arithmetic average input numbers, M = #{m = sum_2 / a}"
puts "Sum of the numbers from 1 to #{a} (UNTIL): #{sum_3}, Arithmetic average input numbers, M = #{m = sum_3 / a}"
puts "Sum of the numbers from 1 to #{a} (EACH): #{sum_4}, Arithmetic average input numbers, M = #{m = sum_4 / a}"
