# @param {Integer[]} nums
# @return {Boolean}
def check(nums)
  count = 0
  (0...nums.length).each do |i|
    count += 1 if nums[i] > nums[(i + 1) % nums.length]
    return false if count > 1
  end
  true
end
