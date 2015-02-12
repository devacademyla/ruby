# Clase Persona
class Persona
  def initialize(params)
    @nombre = params[:nombre]
    @apellido = params[:apellido]
  end

  def nombres_completos
    @nombre + ' ' + @apellido
  end
end
 
persona = Persona.new(nombre: 'Joaquín', apellido: 'Salas')
persona.nombres_completos # => Joaquín Salas
