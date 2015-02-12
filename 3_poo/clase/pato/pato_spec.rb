require_relative './pato'

RSpec.describe Pato do
  it 'hace quack' do
    expect(Pato.new.quack).to eq 'Quack!'
  end

  it 'nada en el estanque' do
    expect(Pato.new.nadar).to eq 'Nadando en el estanque'
  end

  it 'puede volar' do
    expect(Pato.new.volar).to eq 'Volando por los cielos'
  end

  describe PatoMallard do
    it 'se muestra en pantalla' do
      pato = PatoMallard.new
      expect(pato.mostrar).to eq 'Soy un Pato Mallard'
    end
  end

  describe PatoBlanco do
    it 'se muestra en pantalla' do
      pato = PatoBlanco.new
      expect(pato.mostrar).to eq 'Soy un Pato Blanco'
    end
  end
  
end
