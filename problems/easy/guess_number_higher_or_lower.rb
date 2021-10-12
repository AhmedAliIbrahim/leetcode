# The guess API is already defined for you.
# @param num, your guess
# @return -1 if my number is lower, 1 if my number is higher, otherwise return 0
# def guess(num)

def guessNumber(n)
  lo = 1
  hi = n

  while lo <= hi
    mid = (lo + hi) / 2
    res = guess(mid)

    return mid if res.zero?

    if res.negative?
      hi = mid - 1
    else
      lo = mid + 1
    end
  end
  -1
end
