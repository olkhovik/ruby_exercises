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

if (yy % 4 == 0 && yy % 100 != 0) || yy % 400 == 0
m2 = 29
else
  m2 = 28
end

m1 = m3 = m5 = m7 = m8 = m10 = m12 = 31
m4 = m6 = m9 = m11 = 30

case mm
  when 1
    num = dd
  when 2
    num = dd + m1
  when 3
    num = dd + m1 + m2
  when 4
    num = dd + m1 + m2 + m3
  when 5
    num = dd + m1 + m2 + m3 + m4
  when 6
    num = dd + m1 + m2+ m3 + m4 + m5
  when 7
    num = dd + m1 + m2+ m3 + m4 + m5 + m6
  when 8
    num = dd + m1 + m2+ m3 + m4 + m5 + m6 + m7
  when 9
    num = dd + m1 + m2+ m3 + m4 + m5 + m6 + m7 + m8
  when 10
    num = dd + m1 + m2+ m3 + m4 + m5 + m6 + m7 + m8 + m9
  when 11
    num = dd + m1 + m2+ m3 + m4 + m5 + m6 + m7 + m8 + m9 + m10
  when 12
    num = dd + m1 + m2+ m3 + m4 + m5 + m6 + m7 + m8 + m9 + m10 + m11
end

  puts "Порядковый номер даты #{dd}.#{mm} в #{yy} году: #{num}"
