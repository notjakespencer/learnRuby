# spec/substrings_spec.rb
require_relative '../substrings'

RSpec.describe '#substrings' do
  let(:dictionary) { ["below", "low", "el", "he", "hell", "hello"] }

  it 'finds a single match' do
    expect(substrings("below", dictionary)).to eq({ "below" => 1, "low" => 1, "el" => 1 })
  end

  it 'is case-insensitive' do
    expect(substrings("HeLLo", dictionary)).to eq({ "he" => 1, "hell" => 1, "hello" => 1, "el" => 1 })
  end

  it 'counts multiple overlapping matches' do
    expect(substrings("yellow mellow fellow", dictionary)).to eq({ "low" => 3, "el" => 3 })
  end

  it 'returns an empty hash if no matches' do
    expect(substrings("xyz", dictionary)).to eq({})
  end

  it 'handles an empty string' do
    expect(substrings("", dictionary)).to eq({})
  end

  it 'handles an empty dictionary' do
    expect(substrings("hello", [])).to eq({})
  end
end