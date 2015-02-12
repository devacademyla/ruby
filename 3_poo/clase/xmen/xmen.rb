# encoding: utf-8
class Xmen
  def poder
    fail NotImplementedError, 'Todos los Xmen tienen un poder'
  end
end

class Mistique < Xmen
  def poder
    'Cambiar de forma'
  end
end

class Wolverine < Xmen
  def poder
    'Regeneración'
  end
end
