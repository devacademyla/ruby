suma = 0
i = 0

while i < 1000
  if i % 3 == 0 || i % 5 == 0
    suma += i
  end
  i += 1
end

puts suma
