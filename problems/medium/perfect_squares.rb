# @param {Integer} n
# @return {Integer}
def num_squares(n)
  return 0 if n <= 0

  dp = Array.new(n + 1, n + 1)
  dp[0] = 0

  i = 1
  while i <= n
    j = 1
    while i - (j * j) >= 0
      dp[i] = [dp[i], dp[i - (j * j)] + 1].min
      j += 1
    end
    i += 1
  end
  dp[n]
end
