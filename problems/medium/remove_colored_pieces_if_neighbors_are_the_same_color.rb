# @param {String} colors
# @return {Boolean}
def winner_of_game(colors)
  a = b = 0
  (1...(colors.length - 1)).each do |i|
    a += 1 if colors[i - 1] == colors[i] && colors[i] == colors[i + 1] && colors[i] == 'A'
    b += 1 if colors[i - 1] == colors[i] && colors[i] == colors[i + 1] && colors[i] == 'B'
  end
  a > b
end
