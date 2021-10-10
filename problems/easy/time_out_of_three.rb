# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer[]} nums3
# @return {Integer[]}
def two_out_of_three(nums1, nums2, nums3)
  map = Hash.new(0)
  nums1.uniq.each do |num|
    map[num] += 1 if map[num].zero?
  end

  nums2.uniq.each do |num|
    map[num] += 1
  end

  nums3.uniq.each do |num|
    map[num] += 1
  end

  map.select { |_k, v| v >= 2 }.keys
end
