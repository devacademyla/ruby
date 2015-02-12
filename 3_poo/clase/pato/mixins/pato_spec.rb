require_relative './pato'

RSpec.describe Pato do
  it 'todos los patos nadan en el estanque' do
    expect(Pato.new.nadar).to eq 'Nadando en el estanque'
  end

  context 'Mallard' do
    it 'hace quack, vuela y se muestra' do
      pato = PatoMallard.new
      expect(pato.quack).to eq 'Quack!'
      expect(pato.volar).to eq 'Volando por los cielos'
      expect(pato.mostrar).to eq 'Soy un Pato Mallard'
    end
  end

  context 'Blanco' do
    it 'hace quack, vuela y se muestra' do
      pato = PatoBlanco.new
      expect(pato.quack).to eq 'Quack!'
      expect(pato.volar).to eq 'Volando por los cielos'
      expect(pato.mostrar).to eq 'Soy un Pato Blanco'
    end
  end

  context 'de Hule' do
    it 'hace quack, vuela y se muestra' do
      pato = PatoHule.new
      expect(pato.quack).to eq 'Squeek!'
      expect(pato.volar).to eq 'No puedo volar'
      expect(pato.mostrar).to eq 'Soy un Pato de Hule'
    end
  end

  context 'de Madera' do
    it 'hace quack, vuela y se muestra' do
      pato = PatoMadera.new
      expect(pato.quack).to eq '...'
      expect(pato.volar).to eq 'No puedo volar'
      expect(pato.mostrar).to eq 'Soy un Pato de Madera'
    end
  end
  
end
