# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  profit = 0
  minimum_price = prices[0]

  (1...prices.length).each do |i|
    minimum_price = [minimum_price, prices[i]].min
    profit = [profit, prices[i] - minimum_price].max
  end
  profit
end
