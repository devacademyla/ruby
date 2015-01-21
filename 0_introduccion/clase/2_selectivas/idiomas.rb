puts "Bienvenido al Centro de Idiomas 'Spanglish'"
puts 'Soy la Srta. Luciana. ¿Cuál es tu nombre?'
nombre = gets.chomp

if nombre == nombre.capitalize
  puts 'Por favor, espere un momento ' + nombre + '.'
else
  puts '¿' + nombre + '? Quisiste escribir ' + nombre.capitalize + ', ¿cierto?'
  puts '¿No sabe escribir su nombre?'
  respuesta = gets.chomp

  if respuesta.downcase == 'si'
    puts 'Bueno, ¡siéntese!'
  else
    puts '¡RETÍRESE!'
  end
end
