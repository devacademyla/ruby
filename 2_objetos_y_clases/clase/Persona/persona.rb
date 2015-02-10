# Clase Persona
class Persona
  def initialize(nombre = nil)
    @nombre = nombre
  end

  def nombre
    @nombre
  end

  def nombre=(nombre)
    @nombre = nombre
  end

  def saludar
    "Hola, mi nombre es #{nombre}"
  end
end
