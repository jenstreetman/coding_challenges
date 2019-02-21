
def aVeryBigSum(ar)
  total = 0
  ar.each{ |num| total += num }
  puts total
end



a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
b = [1000000000000000000000000000000000, 1, 10, 50000000000000000000000000]

aVeryBigSum(a)
aVeryBigSum(b)
