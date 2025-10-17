# spec/caesar_cipher_spec.rb

require_relative '../caesar_cipher'

RSpec.describe '#caesar_cipher' do
  it 'shifts lowercase letters correctly' do
    expect(caesar_cipher('abc', 1)).to eq('bcd')
  end

  it 'wraps around from z to a' do
    expect(caesar_cipher('xyz', 3)).to eq('abc')
  end

  it 'preserves punctuation and spaces' do
    expect(caesar_cipher('Hello, World!', 5)).to eq('Mjqqt, Btwqi!')
  end

  it 'handles negative shifts' do
    expect(caesar_cipher('Mjqqt, Btwqi!', -5)).to eq('Hello, World!')
  end

  it 'shifts uppercase letters correctly' do
    expect(caesar_cipher('ABC', 2)).to eq('CDE')
  end

  it 'ignores numbers and symbols' do
    expect(caesar_cipher('Zebra-123!', 4)).to eq('Difve-123!')
  end
end