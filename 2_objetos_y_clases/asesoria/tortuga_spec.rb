require_relative './tortuga'

RSpec.describe 'Tortuga' do
  describe 'Dado' do
    before do
      @dado = Dado.new
    end

    it '#new' do
      expect(@dado.resultado).to eq 0
    end

    it '#lanzar' do
      @dado.lanzar
      expect(@dado.resultado).to be_between(1, 6).inclusive
    end
  end
end
