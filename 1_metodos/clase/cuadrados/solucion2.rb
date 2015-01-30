def suma_cuadrados(n)
  a = 0
  (1..n).each { |x| a += x**2 }
  a
end

def cuadrado_suma(n)
  a = 0
  (1..n).each { |x| a += x }
  a**2
end

def diferencia(n)
  cuadrado_suma(n) - suma_cuadrados(n)
end

puts diferencia(100)
