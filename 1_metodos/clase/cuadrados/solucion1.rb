numero = 100

suma_cuadrados = 0
(1..numero).each { |x| suma_cuadrados += x**2 }

suma = 0
(1..numero).each { |x| suma += x }
cuadrado_suma = suma**2

result = cuadrado_suma - suma_cuadrados

puts result
