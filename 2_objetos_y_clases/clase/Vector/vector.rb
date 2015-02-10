# Clase Vector
class Vector
  def initialize(params = { x: 0, y: 0 })
    @x = params[:x]
    @y = params[:y]
  end

  def x
    @x
  end

  def x=(x)
    @x = x
  end

  def y
    @y
  end

  def y=(y)
    @y = y
  end

  def incrementar(vector)
    @x += vector.x
    @y += vector.y
  end

  def disminuir(vector)
    @x -= vector.x
    @y -= vector.y
  end

  def longitud
    Math.sqrt(@x**2 + @y**2)
  end
end
