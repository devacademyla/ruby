# Class Dado
class Dado
  def initialize
    @valor = 1 + rand(6)
  end

  def valor
    @valor
  end
end

# Class Cubilete
class Cubilete
  def initialize(n)
    @dados = []
    n.times { dados << Dado.new.valor }
  end

  def dados
    @dados
  end
end

# Class Jugada
class Jugada
  def initialize(caparazon, patas)
    @caparazon, @patas = caparazon, patas
    @jugada = []
    dados = 5 - @caparazon - @patas
    @dados = Cubilete.new(dados).dados
    evaluar
    puts 'Ganaste' if patas == 4
  end

  def evaluar
    caparazon if @caparazon == 0
    patas unless @caparazon == 0
  end

  def caparazon
    if @dados.include? 6
      @caparazon = 1
      @jugada << 6
    end
    @caparazon
  end

  def patas
    n = 0
    @dados.each { |dado| n += 1 if dado == 1 }
    n.times { @jugada << 1 }
    @dados.delete(1)
    @patas += n
  end

  def jugada
    @jugada
  end
end

Jugada.new(0, 0)
