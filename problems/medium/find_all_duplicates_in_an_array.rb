# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates1(nums)
  arr = []
  set = Set.new
  nums.each do |num|
    if set.include?(num)
      arr.push(num)
    else
      set.add(num)
    end
  end
  arr
end

def find_duplicates(nums)
  arr = []
  (0...nums.length).each do |i|
    index = nums[i].abs - 1
    arr.push(nums[index + 1]) if nums[index].negative?
    nums[index] = -nums[index]
  end
  arr
end
