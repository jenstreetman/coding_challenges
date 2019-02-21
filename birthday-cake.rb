def birthdayCakeCandles(ar)
  ar.sort!
  tall = ar.last
  count = 0
  ar.each do |element|
    if element == tall
      count += 1
    end
  end
  return count
end


arr = [3, 2, 1, 3]

birthdayCakeCandles(arr)