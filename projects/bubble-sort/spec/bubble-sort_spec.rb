# spec/bubble_sort_spec.rb
require_relative '../bubble-sort'

RSpec.describe '#bubble-sort' do
  it 'sorts an unsorted array' do
    expect(bubble_sort([4, 3, 78, 2, 0, 2])).to eq([0, 2, 2, 3, 4, 78])
  end

  it 'handles an already sorted array' do
    expect(bubble_sort([1, 2, 3, 4])).to eq([1, 2, 3, 4])
  end

  it 'handles a reverse-sorted array' do
    expect(bubble_sort([5, 4, 3, 2, 1])).to eq([1, 2, 3, 4, 5])
  end

  it 'handles an array with duplicates' do
    expect(bubble_sort([3, 1, 2, 3])).to eq([1, 2, 3, 3])
  end

  it 'handles an empty array' do
    expect(bubble_sort([])).to eq([])
  end

  it 'handles a single-element array' do
    expect(bubble_sort([42])).to eq([42])
  end
end