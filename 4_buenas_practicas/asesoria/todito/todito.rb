# Clase Dado
class Dado
  attr_reader :resultado
  def initialize
    @resultado = nil
  end

  def lanzar
    @resultado = rand(1..6)
  end
end

# Clase Todito
class Todito
  attr_reader :dado, :castigo
  def initialize
    @dado = Dado.new
    @castigo = nil
  end

  def jugar
    @dado.lanzar
    @castigo = definir_castigo(@dado.resultado)
  end

  def definir_castigo(dado)
    case dado
    when 1, 5
      'Toman todos'
    when 2, 6
      'Toma otro'
    when 3
      'Toma el de mi derecha'
    when 4
      'Toma el de mi izquierda'
    else
      'El dado no es válido'
    end
  end
end

# Clase Jugador
class Jugador
  attr_reader :shots, :id
  def initialize(id)
    @id = id
    @shots = 0
  end

  def tomar_shot
    @shots += 1
  end

  def esta_ebrio?
    @shots == 10
  end
end

# Clase Juego
class Juego
  attr_reader :jugadores
  def initialize(num_jugadores)
    @jugadores = []
    num_jugadores.times { |n| @jugadores << Jugador.new(n + 1) }
  end

  def jugar
    until @jugadores.size == 1
      @jugadores.size.times do |i|
        break if @jugadores[i].nil?
        todito = Todito.new
        todito.jugar
        aplicar_castigo(todito.castigo, i)
        quitar_jugadores
      end
    end
  end

  def aplicar_castigo(castigo, i)
    size = @jugadores.size
    case castigo
    when 'Toman todos'
      @jugadores.map(&:tomar_shot)
    when 'Toma otro'
      @jugadores[rand(0..size - 1)].tomar_shot
    when 'Toma el de mi derecha'
      a = i.next == size ? 0 : (i + 1)
      @jugadores[a].tomar_shot
    when 'Toma el de mi izquierda'
      @jugadores[i - 1].tomar_shot
    end
  end

  def quitar_jugadores
    i = @jugadores.size - 1
    while i >= 0
      @jugadores.delete_at(i) if @jugadores[i].esta_ebrio?
      i -= 1
    end
  end
end