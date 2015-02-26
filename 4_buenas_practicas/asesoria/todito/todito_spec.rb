require_relative './todito'

RSpec.describe Dado do
  before do
    @dado = Dado.new
  end
  it 'devuelve nil si no se ha lanzado el dado' do
    expect(@dado.resultado).to eq nil
  end
  it 'devuelve un número aleatorio entre 1 y 6 al lanzar el dado' do
    @dado.lanzar
    expect(@dado.resultado).to be_between(1, 6).inclusive
  end
end

RSpec.describe Todito do
  before do
    @todito = Todito.new
  end
  it 'si no se juega no hay castigo' do
    expect(@todito.castigo).to eq nil
    expect(@todito.dado.resultado).to eq nil
  end
  it 'se lanza el dado al jugar' do
    @todito.jugar
    expect(@todito.dado.resultado).not_to eq nil
  end
  it 'se define el castigo al jugar' do
    @todito.jugar
    expect(@todito.castigo)
      .to eq @todito.definir_castigo(@todito.dado.resultado)
  end
end

RSpec.describe Jugador do
  before do
    @jugador = Jugador.new(1)
  end
  it 'inicia sin ningún shot' do
    expect(@jugador.shots).to eq 0
  end
  it 'tomar shots' do
    @jugador.tomar_shot
    expect(@jugador.shots).to eq 1
  end
  it 'al 10mo shot pierde el juego' do
    10.times { @jugador.tomar_shot }
    expect(@jugador.esta_ebrio?).to eq true
  end
end

RSpec.describe Juego do
  before do
    @juego = Juego.new(3)
  end
  describe '#aplicar_castigo' do
    it 'castigo: \'Toman todos\'' do
      expect{@juego.aplicar_castigo('Toman todos', 0)}
        .to change{@juego.jugadores[0].shots}.from(0).to(1)
    end
    it 'castigo: \'Toma el de mi derecha\'' do
      expect{@juego.aplicar_castigo('Toma el de mi derecha', 0)}
        .to change{@juego.jugadores[1].shots}.from(0).to(1)
    end
    it 'castigo: \'Toma el de mi izquierda\'' do
      expect{@juego.aplicar_castigo('Toma el de mi izquierda', 0)}
        .to change{@juego.jugadores[2].shots}.from(0).to(1)
    end
  end
  describe '#quitar_jugadores' do
    it 'Un jugador ebrio' do
      10.times { @juego.jugadores[0].tomar_shot }
      expect{@juego.quitar_jugadores}.to change{@juego.jugadores.size}
        .from(3).to(2)
    end
    it 'Más de un jugador ebrio' do
      10.times { @juego.jugadores[0].tomar_shot }
      10.times { @juego.jugadores[1].tomar_shot }
      expect{@juego.quitar_jugadores}.to change{@juego.jugadores.size}
        .from(3).to(1)
    end
  end
  describe '#jugar' do
    it 'Debe quedar un jugador' do
      expect{@juego.jugar}.to change{@juego.jugadores.size}.to eq 1
    end
  end
end