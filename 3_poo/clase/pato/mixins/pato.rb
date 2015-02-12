class Pato
  def quack
    @comportamiento_quack.quack
  end

  def volar
    @comportamiento_volar.volar
  end

  def nadar
    'Nadando en el estanque'
  end
end

class VolarConAlas 
  def volar
    'Volando por los cielos'
  end
end

class NoVuela
  def volar
    'No puedo volar'
  end
end

class Quack
  def quack
    'Quack!'
  end
end

class Squeek
  def quack
    'Squeek!'
  end
end

class NoHaceQuack
  def quack
    '...'
  end
end

class PatoMallard < Pato
  def initialize
    @comportamiento_volar = VolarConAlas.new    
    @comportamiento_quack = Quack.new    
  end

  def mostrar
    'Soy un Pato Mallard'
  end
end

class PatoBlanco < Pato
  def initialize
    @comportamiento_volar = VolarConAlas.new    
    @comportamiento_quack = Quack.new    
  end

  def mostrar
    'Soy un Pato Blanco'
  end
end

class PatoHule < Pato
  def initialize
    @comportamiento_volar = NoVuela.new
    @comportamiento_quack = Squeek.new
  end

  def mostrar
    'Soy un Pato de Hule'
  end
end

class PatoMadera < Pato
  def initialize
    @comportamiento_volar = NoVuela.new
    @comportamiento_quack = NoHaceQuack.new
  end

  def mostrar
    'Soy un Pato de Madera'
  end
end
