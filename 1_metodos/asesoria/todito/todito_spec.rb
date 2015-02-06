require_relative './todito'

RSpec.describe 'todito' do
  describe '#lanzar_dado' do
    it 'devuelve un número aleatorio entre 1 y 6' do
      expect(lanzar_dado).to be_between(1, 6).inclusive
    end
  end

  describe '#definir_castigo' do
    it '1 o 5: Toman todos' do
      expect(definir_castigo(1)).to eq('Toman todos')
      expect(definir_castigo(5)).to eq('Toman todos')
    end

    it '2 o 6 Toma otro'
    it '3: Toma el de mi derecha'
    it '4: Toma el de mi izquierda'
  end
end
