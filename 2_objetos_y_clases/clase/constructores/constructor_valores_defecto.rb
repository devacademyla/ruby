# Clase Persona
class Persona
  def initialize
    @nombre = 'Juan'
  end
  
  def nombre
    @nombre
  end
end

persona = Persona.new
persona.nombre # => Juan
