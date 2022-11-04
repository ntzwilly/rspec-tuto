RSpec.describe 'start_with and end_with matcher' do

  describe 'caterpillar' do

    it 'should check for substring at the begining and at the end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('lar')
    end

    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('lar') }
  end

  describe [:a, :b, :c, :d] do
    it 'should check for elements at the begining and at the end of the array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to start_with(:a, :b, :c)
      expect(subject).to end_with(:d)
      expect(subject).to end_with(:c, :d)
    end
  end

end