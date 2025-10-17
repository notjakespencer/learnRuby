# Take an array of stock prices, one for each hypotehtical day
# Should return a pair of days representing the best day to buy
# and the best day to sell. Days start at 0

def stock_picker(prices)
  return nil if prices.length < 2

  minPrice = prices[0]
  minDay = 0
  maxProfit = 0;
  bestDays = [0, 0]

  prices.each_with_index do |price, day|
    if price < minPrice
      minPrice = price
      minDay = day
    end

    profit = price - minPrice
    if profit > maxProfit && day > minDay
      maxProfit = profit
      bestDays = [minDay, day]
    end
  end
  bestDays
end