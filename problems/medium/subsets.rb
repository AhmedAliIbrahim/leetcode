# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  res = []
  dfs(nums, 0, [], res)
  res
end

def dfs(nums, idx, path, res)
  res.push(path)
  (idx...nums.length).each do |i|
    dfs(nums, i + 1, path + [nums[i]], res)
  end
end
