require 'airport'
  

describe Airport do
  subject(:airport) { described_class.new }

describe '#land' do
  it 'responds to land with 1 argument' do
    expect(subject).to respond_to(:land).with(1).argument
  end
  it 'does not let planes land when stormy' do
    allow(airport).to receive(:stormy?).and_return true
    expect{ subject.land Plane.new }.to raise_error 'Cannot land: weather is stormy!'
  end
  it 'raises an error when full' do
    allow(airport).to receive(:stormy?).and_return false
    20.times { subject.land Plane.new }
    expect { subject.land Plane.new }.to raise_error 'Airport full'
  end

describe '#take_off'
  it 'responds to take_off with 1 argument' do
    allow(airport).to receive(:stormy?).and_return false
    expect(subject).to respond_to(:take_off).with(1).argument
  end

  it 'does not let planes take off when stormy' do
    allow(airport).to receive(:stormy?).and_return true
    allow(airport).to receive(:empty?).and_return false
    expect{ subject.take_off Plane.new }.to raise_error 'Cannot take off: weather is stormy!'
end
end
end
