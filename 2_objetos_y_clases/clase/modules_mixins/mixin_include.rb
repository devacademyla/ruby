module Conversión
  def palabra
    return "uno" if @valor == 1
    return "mucho"
  end
end

class Número
  include Conversión
  attr_accessor :valor
end

a = Número.new
a.valor = 1
puts a.palabra
