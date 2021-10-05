# @param {Integer[]} rolls
# @param {Integer} mean
# @param {Integer} n
# @return {Integer[]}
def missing_rolls(rolls, mean, n)
  m = rolls.length
  total = (m + n) * mean
  remaining = total - rolls.sum
  ans = []
  return ans if remaining < n || remaining > n * 6

  while remaining.positive?
    roll = [remaining - n + 1, 6].min
    ans.push(roll)
    remaining -= roll
    n -= 1
  end
  ans
end
