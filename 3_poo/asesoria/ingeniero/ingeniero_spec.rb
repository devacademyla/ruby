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
  it 'lanzar 5 dados' do
    ingeniero = Ingeniero.new
    expect(ingeniero.lanzar_dados.length).to eq 5
  end

  context 'escoger dados' do
    it 'si los números son válidos' do
      ingeniero = Ingeniero.new
      ingeniero.dados = [5, 4, 3, 2, 1]
      allow(ingeniero).to receive(:gets).and_return('5', '4', '3', '2', '1')
      ingeniero.escoger
      expect(ingeniero.nums).to eq [5, 4, 3, 2, 1]
    end

    it 'si los números no son válidos' do
      ingeniero = Ingeniero.new
      ingeniero.dados = [5, 4, 3, 2, 1]
      allow(ingeniero).to receive(:gets)
        .and_return('6', '5', '4', '3', '2', '1')
      ingeniero.escoger
      expect(ingeniero.nums).to eq [5, 4, 3, 2, 1]
    end
  end

  context 'Obtener resultado' do
    it 'puntuación sin jugar' do
      ingeniero = Ingeniero.new
      expect(ingeniero.resultado).to eq nil
    end

    it 'puntuación al jugar' do
      ingeniero = Ingeniero.new
      ingeniero.dados = [5, 4, 3, 2, 1]
      allow(ingeniero).to receive(:gets).and_return('5', '4', '3', '2', '1')
      ingeniero.escoger
      expect(ingeniero.resultado).to eq 12
    end
  end
end
