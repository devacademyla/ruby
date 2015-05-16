x = 10

def es_primo?(numero)
  (2..(numero - 1)).each do |i|
    return false if numero % i == 0
  end
  true
end

def primos(numero)
  a = []
  (2..numero).each do |i|
    a << i if es_primo?(i)
  end
  a
end

def suma(numero)
  sum = 0
  numero.each { |i| sum += i }
  sum
end

puts "#{suma(primos(x))}"
