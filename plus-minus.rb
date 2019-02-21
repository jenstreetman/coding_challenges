def plusMinus(arr)
  pos = 0
  neg = 0
  zero = 0
  total = arr.length

  arr.each do |element|
    if element == 0 zero += 1 
    elsif element > 0 { pos +=1 } 
    else {neg += 1 }
    end 
  end

  puts (pos.to_f/total).round(6)
  puts (neg.to_f/total).round(6)
  puts (zero.to_f/total).round(6)
end

arr1 = [ -1, -7, 0, 9, 6, 0]

plusMinus(arr1)