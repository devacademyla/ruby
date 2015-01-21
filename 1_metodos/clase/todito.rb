def lanzar_dado
  1 + rand(6)
end

def definir_castigo(dado)
  case dado
  when 1, 5
    'Toman todos'
  when 2, 6
    'Toma otro'
  when 3
    'Toma el de mi izquierda'
  when 4
    'Toma el de mi derecha'
  else
    'El dado no es válido'
  end
end

def jugar
  dado = lanzar_dado
  castigo = definir_castigo(dado)
  puts castigo
end

jugar