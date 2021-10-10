# @param {Integer} left
# @param {Integer} right
# @return {Integer}
# Bitwise anding two numbers will always result in a value less than the smallest number
def range_bitwise_and(left, right)
  right &= right - 1 while right > left
  right & left
end
