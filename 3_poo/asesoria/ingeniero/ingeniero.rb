# Clase Dado
class Dado
  def resultado
    rand(1..6)
  end
end

# Clase Cubilete
class Cubilete
  attr_reader :dados
  def initialize
    @dados = []
  end

  def cargar(num_dados)
    num_dados.times { @dados << Dado.new }
  end

  def resultados
    @dados.map(&:resultado)
  end
end

# Clase Ingeniero
class Ingeniero
  attr_reader :cubilete, :nums, :resultado

  def initialize
    @cubilete = Cubilete.new
    @nums = []
  end

  def escoger
    preguntas = [
      'Primer número: ', 'Sumar el número: ', 'Restar el número: ',
      'Multiplicar el número: ', 'Dividir el número: ']
    preguntas.each do |pregunta|
      print pregunta
      numero = gets.chomp.to_i
      @nums << numero
    end
    @resultado = (@nums[0] + @nums[1] - @nums[2]) * @nums[3] / @nums[4]
  end

  def jugar
    @cubilete.cargar(5)
    escoger
  end
end
