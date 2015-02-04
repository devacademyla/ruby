require_relative './tortuga'

RSpec.describe 'Tortuga' do
  describe 'Dado' do
    it '#valor' do
      dado = Dado.new
      expect(dado.valor).to be_between(1, 6).inclusive
    end
  end

  describe 'Cubilete' do
    it '#dados' do
      cubilete = Cubilete.new(4)
      expect(cubilete.dados.length).to eq 4
    end
  end

  describe 'Jugada' do
    describe '#new' do
      it 'sin caparazon ni patas' do
        jugada = Jugada.new(0, 0)
        expect(jugada.caparazon).to be >= 0
        expect(jugada.patas).to be >= 0
      end

      it 'con caparazon sin patas' do
        jugada = Jugada.new(1, 0)
        expect(jugada.caparazon).to eq 1
        expect(jugada.patas).to be >= 0
      end

      it 'con caparazon y una pata' do
        jugada = Jugada.new(1, 1)
        expect(jugada.caparazon).to eq 1
        expect(jugada.patas).to be >= 1
      end
    end
  end
end
