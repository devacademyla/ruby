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

    describe '#new' do
      it 'Tortuga sin caparazon ni patas al crearse' do
        resultado = 'Obtuviste 0 caparazon y 0 patas en 0/3 jugadas'
        expect(@tortuga.resultado).to eq resultado
      end
    end

    describe '#evaluar' do
      it 'Obtener un caparazon y 0 patas' do
        resultado = 'Obtuviste 1 caparazon y 0 patas en 0/3 jugadas'
        @tortuga.evaluar([2, 4, 6, 3, 6])
        expect(@tortuga.resultado).to eq resultado
      end

      it 'Obtener un caparazon y 2 patas' do
        resultado = 'Obtuviste 1 caparazon y 2 patas en 0/3 jugadas'
        @tortuga.evaluar([6, 1, 1, 3, 5])
        expect(@tortuga.resultado).to eq resultado
      end

      it 'Obtener un caparazon y 4 patas' do
        resultado = 'Obtuviste 1 caparazon y 4 patas en 0/3 jugadas'
        @tortuga.evaluar([6, 1, 1, 1, 1])
        expect(@tortuga.resultado).to eq resultado
      end
    end
  end
end
