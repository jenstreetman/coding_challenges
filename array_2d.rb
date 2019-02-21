#!/bin/ruby

require 'json'
require 'stringio'

# Sums the numbers in an hourglass pattern from an array
# a b c
#   d
# e f g
def sum(a)
  sum = a[0][0] + a[0][1] + a[0][2] + a[1][1] + a[2][0] + a[2][1] + a[2][2]
end


# Return a partial array 
def partial_array(a, startx, starty)
  partial_a = Array.new(3) { Array.new(3)}
  3.times do |col|
    3.times do |row|
      partial_a[row][col] = a[row + startx][col + starty]
    end
  end
  return partial_a
end



# Complete the hourglassSum function below.
def hourglassSum(a)
  
  sums = []

   4.times do |y|
     4.times do |x|
      sums << sum(partial_array(a, x, y))
     end
   end

  return sums.sort[-1]

end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# arr = Array.new(6)

# 6.times do |i|
#     arr[i] = gets.rstrip.split(' ').map(&:to_i)
# end

arr = [[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 0, 2, 4, 4, 0], [0, 0, 0, 2, 0, 0], [0, 0, 1, 2, 4, 0]]
result = hourglassSum arr
puts result

# fptr.write result
# fptr.write "\n"

# fptr.close()