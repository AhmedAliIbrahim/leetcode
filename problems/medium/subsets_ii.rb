# @param {Integer[]} nums
# @return {Integer[][]}
def subsets_with_dup(nums)
  res = []
  dfs(nums.sort!, 0, [], res)
  res
end

def dfs(nums, index, path, res)
  res.push(path)
  (index...nums.length).each do |i|
    next if i > index && nums[i] == nums[i - 1]

    dfs(nums, i + 1, path + [nums[i]], res)
  end
end
