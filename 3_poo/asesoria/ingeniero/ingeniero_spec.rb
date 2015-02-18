require_relative './ingeniero'
RSpec.describe Cubilete do
  it 'cargar cubilete con 5 dados' do
    cubilete = Cubilete.new
    cubilete.cargar(5)
    expect(cubilete.dados.length).to eq 5
  end

  it 'obtener resultado de los dados' do
    cubilete = Cubilete.new
    cubilete.cargar(5)
    expect(cubilete.resultados.length).to eq 5
    expect(cubilete.resultados[0]).to be_between(1, 6).inclusive
  end
end
RSpec.describe Ingeniero do
  it 'escoger dados' do
    ingeniero = Ingeniero.new
    allow(ingeniero).to receive(:gets).and_return('5', '4', '3', '2', '1')
    ingeniero.escoger
    expect(ingeniero.resultado).to eq 12
    expect(ingeniero.nums).to eq [5, 4, 3, 2, 1]
  end
end
