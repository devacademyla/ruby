# Clase Caramelo
class Caramelo
end

# Clase Moneda
class Moneda
end

# Clase Dispensador
class Dispensador
  attr_accesor :monedas, :caramelos

  def initialize
    @monedas = []
    @caramelos = []
  end

  def cargar_caramelos(num_caramelos)
    num_caramelos.times { @caramelos << Caramelo.new }
  end

  def ingresar_moneda
    return 'No hay caramelos' if @caramelos.empty?
    @monedas << Moneda.new
    @caramelos.pop
  end
end
