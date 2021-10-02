# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
# Priority Queue -> https://www.rubydoc.info/github/kanwei/algorithms/Containers/PriorityQueue

def top_k_frequent(nums, k)
  map = Hash.new(0)
  ans = Array.new(k)
  nums.each do |num|
    map[num] += 1
  end

  pq = Containers::PriorityQueue.new

  map.each do |key, v|
    pq.push(key, v)
  end

  (k - 1).downto(0).each do |i|
    ans[i] = pq.pop
  end
  ans
end
