def crear_lista(n)
  lista = [0, 1]
  while lista[-2] + lista[-1] < n
    lista << lista[-2] + lista[-1]
  end
  lista
end

def sumar_lista(n)
  lista = crear_lista(n)
  suma = 0
  lista.each do |x|
    unless x % 2 == 0
      suma += x
    end
  end
  suma
end

puts sumar_lista(4_000_000)
