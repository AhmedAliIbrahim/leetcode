# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  profit = 0
  (0...prices.length - 1).each do |i|
    diff = prices[i + 1] - prices[i]
    profit += diff if diff.positive?
  end
  profit
end
