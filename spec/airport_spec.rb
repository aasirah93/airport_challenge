require 'airport'
  

describe Airport do
  subject(:airport) { described_class.new }

describe '#land' do
  it 'responds to land with 1 argument' do
    expect(subject).to respond_to(:land).with(1).argument
  end
  it 'raises an error when full' do
    20.times { subject.land Plane.new }
    expect { subject.land Plane.new }.to raise_error 'Airport full'
  end

describe '#take_off'
  it 'responds to take_off with 1 argument' do
    expect(subject).to respond_to(:take_off).with(1).argument
end
end
end