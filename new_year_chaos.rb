def minimumBribes(q)
  bribes = 0

  q.length.times do |i| 
    puts "i is #{i}"
  
    if q[i] >= i + 4
      bribes = "Too chaotic"
      break

    # Check to see if it is smaller tha the number before, if so, move it down   
    elsif i > 0 && q[i] < q[i-1]
      j = i
      puts " j is #{j}"      
      while j > 0 && q[j] < q[j-1]
              bribes +=  1
        temp = q[j-1]
        q[j - 1] = q[j]
        q[j] = temp
        j -= 1
        puts "i is #{i} and j is #{j} and bribes is #{bribes}"
        puts q.inspect
      end
    end  
  end
  puts bribes
end

q = [1, 2, 5, 3, 7, 8, 6, 4]

minimumBribes q


# 1, 2, 3, 4, 5, 6, 7, 8
# 1, 2, 5, 3, 4, 6, 7, 8
# 1, 2, 5, 3, 7, 4, 6, 8
# 1, 2, 5, 3, 7, 8, 4, 6
# 1, 2, 5, 3, 7, 8, 6, 4