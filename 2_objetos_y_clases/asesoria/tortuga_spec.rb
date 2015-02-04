require_relative './tortuga'

RSpec.describe 'Tortuga' do
  describe 'Dado' do
    before do
      @dado = Dado.new
    end

    describe '#lanzar' do
      it 'el resultado es un número aleatorio entre 1 y 6' do
        @dado.lanzar
        expect(@dado.resultado).to be_between(1, 6).inclusive
      end
    end
  end

  describe 'Cubilete' do
    before do
      @cubilete = Cubilete.new
      @cubilete.cargar(5)
    end

    describe '#cargar' do
      it 'el cubilete tiene 5 dados' do
        expect(@cubilete.resultados.length).to eq 5
      end
    end

    describe '#lanzar' do
      it 'devolver un arreglo de numeros aleatorios' do
        @cubilete.lanzar
        @cubilete.resultados.each do |resultado|
          expect(resultado).to be_between(1, 6).inclusive
        end
      end
    end
  end

  describe 'Tortuga' do
    before do
      @tortuga = Tortuga.new
    end

    it '#new' do
      resultado = 'Obtuviste 0 caparazon y 0 patas en 0/3 jugadas'
      expect(@tortuga.resultado).to eq resultado
    end

    it '#evaluar' do
    end
  end
end
