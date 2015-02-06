# Clase Engranaje
class Engranaje
  def initialize(plato, num_dientes, rueda = nil)
    @plato = plato
    @num_dientes = num_dientes
    @rueda = rueda
  end

  def radio
    plato / dientes._tof
  end

  def gear_inches
    radio * rueda.diametro
  end
end

# Clase Rueda
class Rueda
  def initialize(llanta, neumatico)
    @llanta = llanta
    @neumatico = neumatico
  end

  def diametro
    llanta + (neumatico * 2)
  end

  def circunferencia
    diametro * Math::PI
  end
end
