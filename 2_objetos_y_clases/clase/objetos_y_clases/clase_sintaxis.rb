# Class Persona
class Persona
  def nombre=(nombre)
    @nombre = nombre
  end

  def nombre
    @nombre
  end

  def saludo
    puts "Hola #{@nombre}"
  end
end
