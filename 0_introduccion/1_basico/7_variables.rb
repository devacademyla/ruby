# Asignacion de variables
nombre = 'Kattya'
edad = 20
puts "#{nombre} tiene #{edad} años."
# => Kattya tiene 20 años.

# Conversiones:
# A cadena
puts 'hola ' + 2.to_s + ' veces'
# => hola 2 veces

# A entero
puts 4 + '4'.to_i
# => 8

# A float
puts 50.to_f
# => 50.0

# Metodos gets y chomp
puts 'Hola, ¿cuál es tu nombre?'
name = gets
puts 'Hola ' + name + ', encantado de conocerte.'
# => Hola (name)
# => , encantado de conocerte.

puts 'Hola, ¿cuál es tu nombre?'
name = gets.chomp
puts 'Hola ' + name + ', encantado de conocerte.'
# => Hola (name), encantado de conocerte.
