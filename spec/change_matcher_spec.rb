RSpec.describe 'change matcher' do
  
  subject { [1,2,3] }

  it 'check if a method change an object state' do
    expect { subject.push(4) }.to change { subject.length }.by(1)
  end

  it 'can accept negative arguments' do
    # expect { subject.pop }.to change { subject.length }.from(3).to(2)
    expect { subject.pop }.to change { subject.length }.by(-1)
  end

end