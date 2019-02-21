def migratoryBirds(arr)
  uniques = {}

  # puts the count of each bird into a hash  
  arr.sort.reverse.each do |bird|
    if uniques[bird]
      uniques[bird] += 1
    else
      uniques[bird] = 1
    end
  end

  #sorts by the value
  sorted =  uniques.sort_by { |key, value| value }

  #returns the value of the last which is the highest count and the lowest value
  return sorted.last[0]
end


birds = [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4]

puts migratoryBirds birds