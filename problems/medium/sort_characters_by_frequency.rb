# @param {String} s
# @return {String}
# Priority Queue -> https://www.rubydoc.info/github/kanwei/algorithms/Containers/PriorityQueue

def frequency_sort(s)
  map = Hash.new(0)
  s.chars.each do |ch|
    map[ch] += 1
  end

  pq = Containers::PriorityQueue.new

  map.each do |k, v|
    pq.push(k, v)
  end
  ans = []
  while !pq.empty?
    ch = pq.pop
    (0...map[ch]).each do |_i|
      ans << ch
    end
  end
  ans.join
end
