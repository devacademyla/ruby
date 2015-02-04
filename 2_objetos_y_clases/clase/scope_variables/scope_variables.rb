# Variables locales
nombre = 'Lucía'
defined? nombre
# => "local-variable"

# Variables de instancia
class Persona
  def nombre
    @nombre = 'José'
  end
end
 
# Variables de Clase
class Saludo
  @@total = 0

  def initialize(nombre)
    @nombre = nombre
  end

  def repetir(veces)
    @@total += veces
    "Hola #{@nombre}! " * veces
  end

  def total
    "El total de veces es #{@@total}"
  end
end

hola = Saludo.new('Kattya')
hola.repetir(5)
hola.repetir(2)
hola.total

# Variables Globales
$precio = 40
defined? $precio
# => "global-variable"

# Constantes
IGV = 0.18
defined? IGV
# => "constant"
