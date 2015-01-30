def multiplo_tres?(n)
  n % 3 == 0
end

def multiplo_cinco?(n)
  n % 5 == 0
end

def aceptable?(n)
  multiplo_tres?(n) || multiplo_cinco?(n)
end

def suma(n)
  i = 0
  suma = 0
  while i < n
    if aceptable?(i)
      suma += i
    end
    i += 1
  end
  suma
end

puts suma(1000)
