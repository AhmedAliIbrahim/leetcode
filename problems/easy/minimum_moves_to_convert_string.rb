# param {String} s
# @return {Integer}
def minimum_moves(s)
  return 0 unless s.include?('X')

  count = i = 0

  while i < s.length
    if s[i] == 'X'
      count += 1
      i += 3
    else
      i += 1
    end
  end
  count
end
