# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer[]} nums3
# @return {Integer[]}
def two_out_of_three(nums1, nums2, nums3)
  map = Hash.new(0)
  for num in nums1.uniq
    map[num] += 1 if map[num].zero?
  end
  
  for num in nums2.uniq
    map[num] += 1
  end
  
  for num in nums3.uniq
    map[num] += 1
  end
  
  map.select{|k, v| v >= 2}.keys
end
