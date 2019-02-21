def sumArray(arr)
  total = 0
  arr.each { |element| total += element }
  return total
end


def miniMaxSum(arr)
  arr.sort!
  min = sumArray(arr[0..arr.length-2])
  max = sumArray(arr[1..arr.last])
  puts "#{min} #{max}"
end

arr1=[1, 6, 4, 5, 2, 3 ]

miniMaxSum(arr1)