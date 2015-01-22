print 'Primer número: '
num1 = gets.chomp.to_i

print 'Segundo número: '
num2 = gets.chomp.to_i

if num1 == num2
  puts 'Estos números son iguales.'
elsif num1 > num2
  puts "El primer número (#{num1}) es mayor."
else
  puts "El segundo número (#{num2}) es mayor."
end
