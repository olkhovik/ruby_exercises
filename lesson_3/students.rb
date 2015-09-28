#Запросить у пользователя кол-во студентов в группе.
#Для каждого студента запросить оценку по 100-бальной шакле,
#вывести среднюю оценку группы.

puts "Input number of students in class:"
a = gets.chomp.to_i

arr = Array.new
(1..a).each do |i|
  puts "Enter your estimate for a 100-point scale for the student #{i}:"
  arr[i] = gets.chomp.to_i
end

av_est = 0
(1..a).each {|i| av_est += arr[i]}

puts "Average estimate in class: #{av_est / a.to_f}"
