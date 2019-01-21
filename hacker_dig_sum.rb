#!/bin/ruby

require 'json'
require 'stringio'

# Complete the diagonalDifference function below.
def diagonalDifference(arr)
  first_diagonal = arr.map.with_index {|row, i| row[i]} .inject :+
  inverted_diagonal = arr.map.with_index {|row, i| row[-i-1]} .inject :+
  (first_diagonal - inverted_diagonal)
end

fptr = File.open('test', 'w')

# arr = [[6, 6, 7, -10, 9, -3, 8, 9, -1],
# [9, 7, -10, 6, 4, 1, 6, 1, 1],
# [-1, -2, 4, -6, 1, -4, -6, 3, 9],
# [-8, 7, 6, -1, -6, -6, 6, -7, 2],
# [-10, -4, 9, 1, -7, 8, -5, 3, -5],
# [-8, -3, -4, 2, -3, 7, -5, 1, -5],
# [-2, -7, -4, 8, 3, -1, 8, 2, 3],
# [-3, 4, 6, -7, -7, -8, -3, 9, -6],
# [-2, 0, 5, 4, 4, 4, -3, 3, 0]]

arr = [[-10, 3, 0, 5, -4],
[2, -1, 0, 2, -8],
[9, -2, -5, 6, 0],
[9, -7, 4, 8, -2],
[3, 7, 8, -5, 0]]

# n = gets.to_i
#
# arr = Array.new(n)
#
# n.times do |i|
#   arr[i] = gets.rstrip.split(' ').map(&:to_i)
# end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()
