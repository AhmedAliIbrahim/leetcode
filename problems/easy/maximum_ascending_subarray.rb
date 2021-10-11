# @param {Integer[]} nums
# @return {Integer}
def max_ascending_sum(nums)
  max = nums[0]
  sum = nums[0]
  (1...nums.length).each do |i|
    if nums[i] > nums[i - 1]
      sum += nums[i]
    else
      sum = nums[i]
    end
    max = [sum, max].max
  end
  max
end
