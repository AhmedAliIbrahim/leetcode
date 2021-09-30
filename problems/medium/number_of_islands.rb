# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
  count = 0
  (0...grid.length).each do |i|
    (0...grid[0].length).each do |j|
      if grid[i][j] == '1'
        dfs(grid, i, j)
        count += 1
      end
    end
  end
  count
end

def dfs(grid, i, j)
  return if invalid_index?(grid, i, j)

  grid[i][j] = '#'
  dfs(grid, i + 1, j)
  dfs(grid, i - 1, j)
  dfs(grid, i, j + 1)
  dfs(grid, i, j - 1)
end

def invalid_index?(grid, i, j)
  i.negative? || j.negative? || i >= grid.length || j >= grid[0].length || grid[i][j] != '1'
end
