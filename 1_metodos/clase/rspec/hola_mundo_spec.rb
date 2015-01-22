require_relative './hola_mundo'

RSpec.describe 'hola_mundo' do
  it 'saluda' do
    expect(hola_mundo).to eq('Hola Mundo!')
  end
end
