# class Mamifero
class Mamifero
  def respirar
    puts 'inhala, exhala'
  end
end

# class Perro
class Perro < Mamifero
  def ladrar
    puts 'guau, guau'
  end
end

perro = Perro.new
perro.respirar
# => inhala, exhala
perro.ladrar
# => guau, guau
