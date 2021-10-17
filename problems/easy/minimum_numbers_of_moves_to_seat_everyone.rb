# @param {Integer[]} seats
# @param {Integer[]} students
# @return {Integer}
def min_moves_to_seat(seats, students)
  res = 0
  seats.sort!
  students.sort!

  (0...seats.length).each do |i|
    res += (seats[i] - students[i]).abs
  end
  res
end
