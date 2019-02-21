def findFactors(int, arr)
  arr.select { |factor| factor if int % factor == 0}
end

def findMultiples(int, arr)
  arr.select { |factor| factor if factor % int == 0}
end

def getTotalX(a, b)
  arr = (1..b.sort!.last).to_a

  b.each do |factor|
   arr = findFactors factor, arr
  end

  a.sort!.each do |factor| 
     arr = findMultiples factor, arr
  end  
  
  return arr.length
end

a = [2, 4]
b = [16, 32, 96]

puts getTotalX a, b