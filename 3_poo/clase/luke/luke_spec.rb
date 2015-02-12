require_relative './luke'

RSpec.describe DarthVader do
  it 'dice: Luke, yo soy tu padre' do
    darth_vader = DarthVader.new
    expect(darth_vader.hablar).to eq 'Luke, yo soy tu padre'
  end
end

RSpec.describe Luke do
  it 'dice: NOOOOOOOOO!!!' do
    luke = Luke.new
    expect(luke.hablar).to eq 'NOOOOOOOOO!!!'
  end
end
