def breakingRecords(scores)
  low = high = scores[0]
  records = [0, 0]  
  scores.each do |score|
    if score > high 
      high = score
      records[0] += 1 
    elsif score < low
      low = score
      records[1] += 1
    end
  end

  return records
end


scores = [10, 5, 20, 20, 4, 5, 2, 25, 1]
print breakingRecords scores