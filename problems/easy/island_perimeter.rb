# @param {Integer[][]} grid
# @return {Integer}
# O(n^2) time, O(1) space
def island_perimeter(grid)
  return 0 if grid.empty?

  count = 0
  (0...grid.length).each do |i|
    (0...grid[0].length).each do |j|
      next unless grid[i][j] == 1

      count += 1 if i.zero? || grid[i - 1][j].zero?
      count += 1 if i == grid.length - 1 || grid[i + 1][j].zero?
      count += 1 if j.zero? || grid[i][j - 1].zero?
      count += 1 if j == grid[0].length - 1 || grid[i][j + 1].zero?
    end
  end
  count
end

def island_perimeter_dfs(grid)
  return 0 if grid.empty?

  (0...grid.length).each do |i|
    (0...grid[0].length).each do |j|
      return dfs(grid, i, j) if grid[i][j] == 1
    end
  end
  0
end

def dfs(grid, i, j)
  return 1 if i.zero? || j.zero? || i >= grid.length || j >= grid[0].length

  return 1 if grid[i][j].zero?
  return 0 if grid[i][j] == -1

  count = 0
  grid[i][j] = -1

  count += dfs(grid, i + 1, j)
  count += dfs(grid, i - 1, j)
  count += dfs(grid, i, j - 1)
  count += dfs(grid, i, j + 1)
  count
end
