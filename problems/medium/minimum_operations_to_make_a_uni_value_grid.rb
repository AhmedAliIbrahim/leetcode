# @param {Integer[][]} grid
# @param {Integer} x
# @return {Integer}
def min_operations(grid, x)
  m = grid.length
  n = grid[0].length

  arr = []
  (0...m).each do |i|
    (0...n).each do |j|
      arr << grid[i][j]
    end
  end

  count = 0
  arr.sort!
  median = arr[(arr.length - 1) / 2]

  arr.each do |num|
    next unless num != median

    diff = (num - median).abs
    return -1 if diff % x != 0

    count += (diff / x)
  end
  count
end
