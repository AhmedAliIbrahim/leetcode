# @param {Integer[]} nums
# @return {Integer[][]}
def permute_unique(nums)
  ans = Set.new
  visited = Array.new(nums.length, false)
  solve(nums, ans, [], visited)
  ans.to_a
end

def solve(nums, ans, path, visited)
  ans.add(path.dup) if path.length == nums.length

  (0...nums.length).each do |i|
    next if visited[i] == true

    visited[i] = true
    path.push(nums[i])
    solve(nums, ans, path, visited)
    path.pop
    visited[i] = false
  end
end
