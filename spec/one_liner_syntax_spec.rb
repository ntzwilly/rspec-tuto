RSpec.describe 'shorthand syntax' do

  subject { 5 }

  context 'with class syntax' do
    it 'should equal to 5' do
      expect(subject).to eq(5)
    end
  end

  context 'with one-liner syntax' do
    it { is_expected.to eq(5) }
  end

end