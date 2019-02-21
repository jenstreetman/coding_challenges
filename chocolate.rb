def birthday(ints, day, month)
  count = 0

  (ints.length - month + 1).times do |i|
    sum = 0
    month.times do |j|
      sum += ints[i + j]
    end

    if sum == day
      count += 1
    end
  end

  return count
end




ints = [2, 3, 2, 3, 2]

day = 5

month = 2

puts birthday ints, day, month



