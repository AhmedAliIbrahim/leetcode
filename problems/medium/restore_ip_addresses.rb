# @param {String} s
# @return {String[]}
def restore_ip_addresses(s)
  res = []
  return res if s.length > 12

  backtrack(s, res, '', 0, 0)
  res
end

def backtrack(s, res, curr_ip, dots, i)
  res.push(curr_ip[0...-1]) if dots == 4 && i == s.length
  return if dots > 4

  (i...([s.length, i + 3].min)).each do |j|
    backtrack(s, res, "#{curr_ip}#{s[i..j]}.", dots + 1, j + 1) if s[i...j + 1].to_i < 256 && (i == j || s[i] != '0')
  end
end
