# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  dp = Array.new(nums.length, 0)
  dp[0] = nums[0]

  (1...nums.length).each do |i|
    return false if dp[i - 1] < i

    dp[i] = [dp[i - 1], i + nums[i]].max
  end

  dp[dp.length - 2] >= nums.length - 1
end

def can_jump?(nums)
  pos = nums.length - 1
  (nums.length - 1).downto(0).each do |i|
    pos = i if nums[i] + i >= pos
  end
end
