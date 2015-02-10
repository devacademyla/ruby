require_relative './vector'

RSpec.describe 'vector' do
  it 'inicia en 0,0 por defecto' do
    vector = Vector.new
    expect(vector.x).to eq 0
    expect(vector.y).to eq 0
  end

  it 'acepta x, y en el constructor' do
    vector = Vector.new(x: 1, y: 2)
    expect(vector.x).to eq 1
    expect(vector.y).to eq 2
  end

  it 'acepta cambiar valores en x, y' do
    vector = Vector.new(x: 1, y: 2)
    vector.x = 5
    vector.y = 6
    expect(vector.x).to eq 5
    expect(vector.y).to eq 6
  end

  it 'incrementar vector' do
    vector = Vector.new(x: 10, y: 20)
    vector.incrementar(Vector.new(x: 1, y: 1))
    expect(vector.x).to eq 11
    expect(vector.y).to eq 21
  end

  it 'disminuir vector' do
    vector = Vector.new(x: 10, y: 20)
    vector.disminuir(Vector.new(x: 1, y: 1))
    expect(vector.x).to eq 9
    expect(vector.y).to eq 19
  end

  it 'calcular longitud' do
    vector = Vector.new(x: 3, y: 4)
    expect(vector.longitud).to eq 5
  end
end
