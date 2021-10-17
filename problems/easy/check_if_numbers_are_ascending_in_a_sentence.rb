# @param {String} s
# @return {Boolean}
def are_numbers_ascending(s)
  num = -1
  s.split.each do |ch|
    next unless digit?(ch)
    return false if ch.to_i <= num

    num = ch.to_i
  end
  true
end

def digit?(str)
  code = str.ord
  code >= 48 && code <= 57
end
