#Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
#Найти порядковый номер даты, начиная отсчет с начала года.
#учесть, что год может быть високосным.

puts "Введите число, месяц и год в формате dd.mm.yyyy"
puts "Число:"
dd = gets.chomp.to_i
puts "Месяц:"
mm = gets.chomp.to_i
puts "Год:"
yy = gets.chomp.to_i

abort "Введены некорректные данные!" if dd <= 0 || dd > 31 || mm <= 0 || mm >12 || yy <= 0

leapyear = false
if (yy % 4 == 0 && yy % 100 != 0) || yy % 400 == 0
leapyear = true
end

days_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

sum_days = 0
for i in (1..mm - 1)
  sum_days += days_month[i - 1]
  #puts sum_days
end

num_days = sum_days += dd
num_days = sum_days += 1 if leapyear && mm > 2

  puts "Порядковый номер даты #{dd}.#{mm} в #{yy} году: #{num_days}"
