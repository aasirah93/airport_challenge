require 'airport'
  

describe Airport do
  subject(:airport) { described_class.new }

  it 'responds to land with 1 argument' do
    expect(subject).to respond_to(:land).with(1).argument
  end
  it 'responds to take_off with 1 arguement' do
    expect(subject).to respond_to(:take_off).with(1).argument
end
end