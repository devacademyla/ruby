# encoding: utf-8
require_relative './xmen'

describe Xmen do
  context Mistique do
    it 'puede cambiar de forma' do
      mistique = Mistique.new
      expect(mistique.poder).to eq 'Cambiar de forma'
    end
  end

  context Wolverine do
    it 'se regenera' do
      wolverine = Wolverine.new
      expect(wolverine.poder).to eq 'Regeneración'
    end
  end

  it 'utilizan sus poderes' do
    xmen = []
    xmen << Mistique.new
    xmen << Wolverine.new
    poderes = xmen.map(&:poder)
    expect(poderes).to eq ['Cambiar de forma', 'Regeneración']
  end
  
end
