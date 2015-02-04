# Class Dado
class Dado
  def initialize
    @resultado = 0
  end

  def lanzar
    @resultado = 1 + rand(6)
  end

  def resultado
    @resultado
  end
end

# Class Cubilete
class Cubilete
  def initialize
    @dados = []
  end

  def cargar(num_dados)
    @dados = []
    num_dados.times { @dados << Dado.new }
  end

  def lanzar
    @dados.map(&:lanzar)
  end

  def resultados
    @dados.map(&:resultado)
  end
end

# Class Tortuga
class Tortuga
  def initialize
    @cubilete = Cubilete.new
    @num_jugadas = 3
    @num_dados = 5
    @jugada_final = {
      caparazon: 0,
      patas: 0
    }
  end

  def evaluar(arr_resultados)
    arr_resultados.each do |resultado|
      if @jugada_final[:caparazon] == 1
        if resultado == 1
          @jugada_final[:patas] += 1
          @num_dados -= 1
        end
      elsif resultado == 6
        @jugada_final[:caparazon] = 1
        @num_dados -= 1
      end
    end
    puts "Dados: #{arr_resultados.inspect}"
    puts "Jugada: #{@jugada_final.inspect}"
  end

  def jugar
    ganar = @jugada_final[:caparazon] == 1 && @jugada_final[:patas] == 4
    while @num_jugadas > 0 || ganar
      puts "Lanzar: #{4 - @num_jugadas}"
      unless @num_dados == 0
        @cubilete.cargar(@num_dados)
        @cubilete.lanzar
        evaluar(@cubilete.resultados)
      end
      @num_jugadas -= 1
    end
  end

  def resultado
    "Obtuviste #{@jugada_final[:caparazon]} caparazon y " \
      "#{@jugada_final[:patas]} patas en #{(3 - @num_jugadas)}/3 jugadas"
  end
end

# tortuga = Tortuga.new
# tortuga.jugar
# puts tortuga.resultado
