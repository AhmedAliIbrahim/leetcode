# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
# MinHeap -> https://www.rubydoc.info/github/kanwei/algorithms/Containers/MinHeap

def find_kth_largest(nums, k)
  min_heap = Containers::MinHeap.new
  nums.each do |num|
    min_heap.push(num)
    min_heap.pop while min_heap.length > k
  end
  min_heap.pop
end

# nlog(n) soltuion

def find_kth_largest_using_sort!(nums, k)
  nums.sort!
  nums[nums.length - k]
end
