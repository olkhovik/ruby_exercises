=begin
программа, вычисляющая площадь треугольника по формуле 1/2a*h,
где - а основание треугольника, h - высота.
a и h запрашиваем у пользователя,
площадь выводим на экран после вычисления.
=end

puts "Привет! Здесь можно вычислить площадь треугольника."

puts "Напиши значение основания а:"
a = gets.chomp.to_f

puts "Напиши значение высоты h:"
h = gets.chomp.to_f

s = (a*h)/2

puts "Площадь треугольника (S) составит #{s}"