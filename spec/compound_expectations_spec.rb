RSpec.describe 25 do

  it 'can check for multiple matchers' do
    # expect(subject).to be_odd
    # expect(subject).to be > 20
    expect(subject).to be_odd.and be > 20
  end

  it { is_expected.to be_odd.and be > 20 }

end

RSpec.describe 'caterpillar' do

  it 'support multiple matcher on a single line' do
    expect(subject).to start_with('cat').and end_with('lar')
  end

  it { is_expected.to start_with('cat').and end_with('lar') }

end

RSpec.describe [:usa, :mexico, :canada] do

  it 'can check for multiple possibilities' do
    expect(subject.sample).to eq(:usa).or eq(:mexico).or eq(:canada)
  end

end