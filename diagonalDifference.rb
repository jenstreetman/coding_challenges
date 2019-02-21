n = 3

def diagonalDifference(arr, n)
  puts "arr[0][0] is #{arr[0][0]}"

  num1 = 0
  num2 = 0
  puts "n is #{n}"
  i = 0
  j = 0
  n.times do 
     num1 = num1 + arr[i][i] 
     num2 = num2 + arr[i][n -1 - i] 
     i += 1
  end

  n.times do 
   
     j = j + 1
  end

  return (num1-num2).abs
end

a = [[1,2,3], [4,5,6], [7,8,9]]
puts "a is #{a}"

result = diagonalDifference(a, n)
puts "result is #{result}"