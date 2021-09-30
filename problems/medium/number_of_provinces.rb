# @param {Integer[][]} is_connected
# @return {Integer}
def find_circle_num(is_connected)
  count = 0
  visited = Array.new(is_connected.size, false)
  (0...is_connected.size).each do |i|
    unless visited[i]
      dfs(is_connected, i, visited)
      count += 1
    end
  end
  count
end

def dfs(is_connected, i, visited)
  visited[i] = true
  (0...is_connected.size).each do |j|
    dfs(is_connected, j, visited) if is_connected[i][j] == 1 && !visited[j]
  end
end
