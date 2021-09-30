# @param {Integer[][]} is_connected
# @return {Integer}
def find_circle_num(is_connected)
  count = 0
  visited = Array.new(is_connected.size, false)
  for i in 0...is_connected.size
    if !visited[i]
      dfs(is_connected, i, visited)
      count += 1
    end
  end
  count
end

def dfs(is_connected, i, visited)
  visited[i] = true
  for j in 0...is_connected.size
    next if j == i
    if is_connected[i][j] == 1 && !visited[j]
      dfs(is_connected, j, visited)
    end
  end
end
