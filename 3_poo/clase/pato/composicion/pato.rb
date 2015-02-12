class Pato
  def nadar
    'Nadando en el estanque'
  end
end

module VolarConAlas 
  def volar
    'Volando por los cielos'
  end
end

module NoVuela
  def volar
    'No puedo volar'
  end
end

module Quack
  def quack
    'Quack!'
  end
end

module Squeek
  def quack
    'Squeek!'
  end
end

module NoHaceQuack
  def quack
    '...'
  end
end

class PatoMallard < Pato
  include VolarConAlas
  include Quack
  
  def mostrar
    'Soy un Pato Mallard'
  end
end

class PatoBlanco < Pato
  include VolarConAlas
  include Quack

  def mostrar
    'Soy un Pato Blanco'
  end
end

class PatoHule < Pato
  include NoVuela
  include Squeek

  def mostrar
    'Soy un Pato de Hule'
  end
end

class PatoMadera < Pato
  include NoVuela
  include NoHaceQuack

  def mostrar
    'Soy un Pato de Madera'
  end
end
