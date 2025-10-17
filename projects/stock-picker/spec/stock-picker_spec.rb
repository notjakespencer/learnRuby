# spec/stock_picker_spec.rb
require_relative '../stock-picker'

RSpec.describe '#stock-picker' do
  it 'finds the best pair of days for max profit' do
    expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1, 4])
  end

  it 'returns nil or empty if no profit is possible' do
    expect(stock_picker([9,8,7,6,5])).to eq([0, 0]) # or nil, depending on your logic
  end

  it 'handles empty input' do
    expect(stock_picker([])).to eq(nil)
  end

  it 'handles single-day input' do
    expect(stock_picker([5])).to eq(nil)
  end

  it 'handles multiple max profits, returns earliest pair' do
    expect(stock_picker([1, 5, 3, 5])).to eq([0, 1])
  end

  it 'handles profit at the end of the array' do
    expect(stock_picker([10, 7, 5, 8, 11, 9])).to eq([2, 4])
  end
end