# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  count = prices.count
  return 0 if count < 1

  l = [0] * count
  r = [0] * count

  l_min = prices.first
  r_max = prices.last

  (1...count).each do |i|
    l_min = prices[i] if prices[i] < l_min
    l[i] = [l[i - 1], prices[i] - l_min].max
  end

  (count - 2).downto(0) do |i|
    r_max = prices[i] if prices[i] > r_max
    r[i] = [r[i + 1], r_max - prices[i]].max
  end

  result = 0
  (count - 1).times do |i|
    result = [result, l[i] + r[i]].max
  end

  result
end
