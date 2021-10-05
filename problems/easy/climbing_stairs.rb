# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  dp = Array.new(n, 0)
  dp[0] = 1
  dp[1] = 1
  (2..n).each do |i|
    dp[i] = dp[i - 1] + dp[i - 2]
  end
  dp[n]
end
