class Pato
  def quack
    'Quack!'
  end

  def nadar
    'Nadando en el estanque'
  end

  def volar
    'Volando por los cielos'
  end
end

class PatoMallard < Pato
  def mostrar
    'Soy un Pato Mallard'
  end
end

class PatoBlanco < Pato
  def mostrar
    'Soy un Pato Blanco'
  end
end
