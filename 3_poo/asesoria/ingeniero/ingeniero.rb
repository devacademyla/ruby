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
  attr_accessor :nums, :dados

  def initialize
    @cubilete = Cubilete.new
    @nums = []
  end

  def jugar
    lanzar_dados
    escoger
    resultado
  end

  def escoger
    preguntas = [
      'Primer número: ', 'Sumar el número: ', 'Restar el número: ',
      'Multiplicar el número: ', 'Dividir el número: ']
    preguntas.each do |pregunta|
      numero = nil
      while numero.nil?
        puts pregunta
        numero = gets.chomp.to_i
        (@dados.include? numero) ? @nums << numero : numero = nil
      end
    end
    @nums
  end

  def resultado
    return nil if @nums.empty?
    @resultado = @nums[0] + @nums[1]
    @resultado -= @nums[2]
    @resultado *= @nums[3]
    @resultado /= @nums[4]
  end

  def lanzar_dados
    @cubilete.cargar(5)
    @dados = @cubilete.resultados
    puts "Obtuviste: #{@dados}"
    @dados
  end
end
