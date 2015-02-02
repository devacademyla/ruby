# Class Tortuga
class Tortuga
  @tiros = 3
  attr_accesor :caparazon, :patas

  def lanzar_dados(n)
    @dados = []
    n.times { dados << 1 + rand(6) }
  end

  def caparazon?
    @caparazon = @dados.include? 6
  end

  def patas?
    i = 0
    @dados.length.times { i += 1 if @dados.include? 1 }
    i
  end

  def resultado
    @patas = 0
    while @@tiros > 0
      lanzar_dados(6)
      caparazon?
      @patas += patas?
      @tiros -= 1
    end
    return "La Tortuga tiene caparazon y #{@patas} patas" if @caparazon
    'No tienes Tortuga'
  end
end
