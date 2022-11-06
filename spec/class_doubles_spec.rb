class Desk
  def self.build
    # Business logic to build a hole bunch of cards
  end
end

class CardGame
  attr_reader :card
  def start
   @card = Desk.build
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods that are defined on the class' do
    deck_klass = class_double(Desk, build: ['Ace', 'Queen']).as_stubbed_const
    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.card).to eq(['Ace', 'Queen'])
  end
end