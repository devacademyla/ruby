def  encontro_multiplo?(numero, total)
  i = 1
  while numero % i == 0 && i <= total
    return true if i == total
    i += 1
  end
  false
end

def encontrar_multiplo(total)
  numero = total
  until encontro_multiplo?(numero, total)
    numero += total
  end
  numero
end

puts encontrar_multiplo(20)
