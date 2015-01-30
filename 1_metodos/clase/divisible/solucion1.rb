divisor = 20
numero = 0
i = 1
encontrado = false

until encontrado
  numero += divisor
  while numero % i == 0 && i <= divisor
    encontrado = true if i == divisor
    i += 1
  end
  i = 1
end

puts numero
