# Concatenacion
puts 'Hola ' + 'mundo'
# => Hola mundo
puts 'mun' << 'do'
# => mundo
puts 'mundo'.concat('!')
# => mundo!
puts 'mundo!'.prepend('Hola ')
# => Hola mundo!

# Metodos
puts 'hOlA mUndO'.capitalize # => Hola!
puts 'hOlA mUndO'.upcase # => HOLA MUNDO
puts 'hOlA mUndO'.downcase # => hola mundo
puts 'hola mundo'.reverse # => odnum aloh
puts 'hola mundo'.length # => 10
puts 'hola mundo'.delete 'aeiou' # => hl mnd
puts 'hola mundo'.include? 'h' # => true
puts 'hola mundo'.gsub 'o', '*' # => h*la mund*
