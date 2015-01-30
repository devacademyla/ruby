a = [0, 1]
num = 4_000_000
suma = 0

while a[-2] + a[-1] < num
  a << a[-2] + a[-1]
end

a.each do |x|
  unless x % 2 == 0
    suma += x
  end
end

puts suma
