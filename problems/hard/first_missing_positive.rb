# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
  missing = 1
  seen = {}
  nums.each do |num|
    next if num < 1

    seen[num] = true
    missing += 1 while seen[missing]
  end

  missing
end

# TLE Simple solution

# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive_tle(nums)
  i = 1
  i += 1 while nums.include?(i)
  i
end
