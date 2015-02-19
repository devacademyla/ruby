require_relative './excepciones'

RSpec.describe Excepciones do
  it 'raise de un error' do
    expect { Excepciones.ejemplo_raise }.to raise_error(NotImplementedError)
  end

  it 'rescue de un error' do
    expect(Excepciones.ejemplo_rescue).to eq :excepcion_capturada
  end

  context 'ensure' do
    it 'con error' do
      expect(Excepciones.ejemplo_ensure(true)).to eq :ensure_ejecutado
    end
    it 'sin error' do
      expect(Excepciones.ejemplo_ensure(false)).to eq :ensure_ejecutado
    end
  end
end
