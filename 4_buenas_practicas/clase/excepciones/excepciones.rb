# Excepciones
class Excepciones
  def self.ejemplo_raise
    fail NotImplementedError
  end

  def self.ejemplo_rescue
    fail 'Duh!'
  rescue
    :excepcion_capturada
  end

  def self.ejemplo_ensure(error)
    resultado = nil
    begin
      if error 
        fail 'Duh!'
      else
        resultado = :sin_error
      end
    rescue
      resultado = :rescue_ejecutado
    ensure
      resultado = :ensure_ejecutado
    end
    resultado
  end
end
