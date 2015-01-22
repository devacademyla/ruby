require_relative './todito'

RSpec.describe '#lanzar_dado' do
  it 'devuelve un número aleatorio entre 1 y 6' do
    dado = lanzar_dado
    expect(dado).to be_between(1, 6).inclusive
  end
end
