# Clase Persona
class Persona
  def initialize(nombre)
    @nombre = nombre
  end

  def nombre
    @nombre
  end
end
 
persona = Persona.new('Frank')
persona.nombre # => Frank
