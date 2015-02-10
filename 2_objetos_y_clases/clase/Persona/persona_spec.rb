require_relative './persona'

RSpec.describe 'persona' do
  it 'tiene nombre por defecto' do
    persona = Persona.new
    expect(persona.nombre).to eq nil
  end

  it 'acepta el nombre en el constructor' do
    persona = Persona.new('Javier')
    expect(persona.nombre).to eq 'Javier'
  end

  it 'acepta modificar el nombre' do
    persona = Persona.new('Javier')
    persona.nombre = 'Julián'
    expect(persona.nombre).to eq 'Julián'
  end

  it 'saluda a sus amigos' do
    persona = Persona.new('Julián')
    expect(persona.saludar).to eq 'Hola, mi nombre es Julián'
  end
end
