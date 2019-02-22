arr = [4, 3, 1, 2]

def minimumSwaps(arr)
  puts arr.inspect

  swaps = 0

  arr.length.times do |i|
    puts "i is #{i}"
    while arr[i] != i + 1
            puts arr.inspect
      puts "content of cell is #{arr[i]}"
      temp = arr[i]
      arr[i] = arr[temp - 1]
      arr[temp-1] = temp
      swaps += 1
      puts arr.inspect
    end

  end
  return swaps

end


puts minimumSwaps arr