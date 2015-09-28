#Программа, заполняющая массив числами Фибоначи

arr = Array.new
arr << 0
arr << 1
fib = 0
n = 0

while fib < 101 do
  fib = arr[n] + arr[n+1]
  arr << fib if fib <= 100
  n += 1
end

puts "Массив готов! #{arr}"
