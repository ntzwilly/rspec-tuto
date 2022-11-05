class  HotChocolate
  def drink
    'Delicious'
  end

  def discard
    'PLOP!'
  end

  def purchase(number)
    "Awesome, I just purchased #{number}"
  end
end

RSpec.describe HotChocolate do

  it 'confirm that an object can respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :purchase)
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end

  it 'confirm that an object can respond to a method with argument' do
    expect(subject).to respond_to(:purchase)
    expect(subject).to respond_to(:purchase).with(1).argument
  end
  
  it { is_expected.to respond_to(:discard, :purchase) }
  it { is_expected.to respond_to(:purchase).with(1).argument }

end