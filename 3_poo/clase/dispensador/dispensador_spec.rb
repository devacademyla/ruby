require_relative './dispensador'

RSpec.describe Dispensador do
  it 'cargar 5 caramelos' do
    dispensador = Dispensador.new
    dispensador.cargar_caramelos(5)
    expect(dispensador.caramelos.length).to eq 5
  end

  it 'pedir caramelos' do
    dispensador = Dispensador.new
    dispensador.cargar_caramelos(5)
    dispensador.ingresar_moneda
    expect(dispensador.caramelos.length).to eq 4
    expect(dispensador.monedas.length).to eq 1
  end

  it 'no hay caramelos' do
    dispensador = Dispensador.new
    expect(dispensador.ingresar_moneda).to eq 'No hay caramelos'
    expect(dispensador.caramelos.length).to eq 0
  end
end
