print 'Tipo de cliente(hombre, mujer, niño): '
cliente = gets.chomp

case cliente
when 'hombre'
  puts 'La entrada está S/. 10'
when 'mujer'
  puts 'La entrada está S/. 5'
when 'niño'
  puts 'La entrada es gratis'
else
  puts 'Tiene que seleccionar un tipo de cliente'
end
