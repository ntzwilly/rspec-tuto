RSpec.describe 'contain_exatly_matcher' do

  subject { [1,2,3] }

  describe 'long form syntax' do

    it 'should check for presence of all elements' do
      expect(subject).to contain_exactly(1, 2, 3)
      expect(subject).to contain_exactly(2, 1, 3)
      expect(subject).to contain_exactly(1, 3, 2)
      # expect(subject).to contain_exactly(1, 3, 2, 4)
    end

    it { is_expected.to contain_exactly(1, 2, 3)}
    it { is_expected.to contain_exactly(3, 2, 1)}
    it { is_expected.to contain_exactly(2, 1, 3)}

  end

end