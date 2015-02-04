module Conversión
  def palabra
    return "uno" if @valor == 1
    return "mucho"
  end
end

class Número
  attr_accessor :valor
  def palabra
    @valor.to_s
  end
end

a = Número.new
a.valor = 3
puts a.palabra
a.extend(Conversión)
puts a.palabra
