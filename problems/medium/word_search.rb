def exist(board, word)
  map = Hash.new(0)
  (0..board.size - 1).each do |i|
    (0..board[0].size - 1).each do |j|
      map[board[i][j]] += 1
    end
  end

  # verify characters exists in map, return false if it doesn't
  word.split('').each do |c|
    map[word[c]] -= 1
    return false if map[c].negative?
  end

  (0..board.size - 1).each do |i|
    (0..board[0].size - 1).each do |j|
      return true if board[i][j] == word[0] && dfs(board, i, j, word, 0)
    end
  end
  false
end

def dfs(board, i, j, word, index)
  return true if index == word.size
  return false if i.negative? || j.negative? || i >= board.size || j >= board[0].size || word[index] != board[i][j]

  tmp = board[i][j]
  board[i][j] = '*'

  found = dfs(board, i + 1, j, word, index + 1) ||
          dfs(board, i - 1, j, word, index + 1) ||
          dfs(board, i, j + 1, word, index + 1) ||
          dfs(board, i, j - 1, word, index + 1)
  board[i][j] = tmp
  found
end
