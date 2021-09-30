# @param {Integer[][]} graph
# @return {Integer[][]}
def all_paths_source_target(graph)
  res = []
  dfs(graph, res, [], 0)
  res
end

def dsf(graph, res, path, cur)
  path << cur
  if cur == graph.size - 1
    res << path.dup
  else
    graph[cur].each do |i|
      dsf(graph, res, path, i)
    end
  end
  path.pop
end
