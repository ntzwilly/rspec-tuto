RSpec.describe Hash do
  subject(:bob) do
    {a: 1, b: 2}
  end

  it 'has two key values pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

  describe 'nested examples' do
    it 'has two key values pairs' do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end
end