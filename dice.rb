def solution(a)
  uniques = {}
  size = a.length
  sum = a.inject('+')
  turns = 0

  # Determine the # of each dice
  a.each do |num|
    if uniques[num]
        uniques[num] += 1        
    else
        uniques[num] = 1
    end
  end     
  sorted = uniques.sort_by {|k,v| v}.reverse
   "Sorted array = #{sorted.inspect}"
  first_count = sorted[0][1]

  # Check for values the same as the highest and put into an array
  highest = []
  sorted.length.times do |t|
    if sorted[t][1] == first_count  
      highest << sorted[t][0]
    end
  end

  low_opposite = sorted[0]

  # Figure out which of the highest values has the lowest # of opposite dice
  highest.length.times do |t|
    found = sorted.select{|x, y| x == 7 - sorted[t][0] }
    if found.any?
      if found[0][1] < low_opposite[1]
        low_opposite = found[0]
      end
    else low_opposite = [7-sorted[t][0], 0]
    end  
  end


  turns = size - first_count

  if low_opposite[1] > 0
    turns += low_opposite[1]
  end

  return turns

end


array = [1, 1, 6, 2, 2]
puts solution array