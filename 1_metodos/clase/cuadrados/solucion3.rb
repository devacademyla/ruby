def calcular_suma(n)
  suma = 0
  (0..n).each { |x| suma = yield(suma, x) }
  suma
end

def diferencia(n)
  suma = calcular_suma(n) { |a, b| a + b }
  suma_cuadrados = calcular_suma(n) { |a, b| a + b**2 }
  suma**2 - suma_cuadrados
end

puts diferencia(100)
