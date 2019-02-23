require 'json'
require 'stringio'

# This solution was copies from the discussion boards, because I just couldn't get there
def arrayManipulation(n, queries)
  # create array of zeros of length n + 1
  arr = Array.new(n + 1, 0)
    queries.each do |q|
     # cycle through and get the inputs
     start = q[0]
     finish = q[1]
     value = q[2]

    # increment value at start of sequence
    arr[start - 1] += value

    # decrement value at first position after sequence
    arr[finish] -= value

  end

    tmp = 0
    max = 0

    arr.each do |value|
        # step through summing array
        tmp += value

        # capture the max value of tmp
        max = tmp if max < tmp
    end
  return max
end


#queries = [[1, 5, 10], [2, 3, 10], [4,7,10], [4, 8, 10]]
queries = Array.new

fptr = File.open('./input10.txt', 'r')
nm = fptr.readlines.first.split


File.readlines(fptr).each do |line|
  queries << line.split(' ').map(&:to_i) 
end

queries.shift(1)

n = nm[0].to_i
m = nm[1].to_i

puts arrayManipulation n, queries


# This was attempt 1, it timed out on long arrays
  #queries.length.times do |i|
  # ranges << queries[0]
  # 5.times do |i|
    # (queries[i][1] - queries[i][0] + 1).times do |j|
    #   puts "j is #{j}"
    #   start = queries[i][0]
    #   last = queries[i][1]
      
    #   arr[start+j-1] += queries[i][2]
    # num_to_change = (queries[i][1] - queries[i][0] + 1)
    # puts num_to_change
    #   puts i
    #end


  # This was attempt #2, also times out on long arrays
    
  # ranges = [[0, n, 0]]
  # start = 0
  # stop = 1
  # value = 2
  # #puts "Ranges is #{ranges.inspect}"

  # queries.each do |q|    

  #   #puts "q is #{q.inspect}"    
  #   # Find where in ranges the starting value lies
  #   start_index = 0
  #   #puts "q[start] is #{q[start]}"
  #   while q[start] > ranges[start_index][start] && q[start] > ranges[start_index][stop]
  #     start_index +=1      
  #   end

  #   # Find where in ranges the ending value lies
  #   stop_index = start_index
  #   while q[stop] > ranges[stop_index][stop]
  #     if start_index < stop_index
  #       ranges[stop_index][value] += q[value]
  #     end
  #     stop_index += 1
  #   end

  #   #puts "Start index is #{start_index}"
  #   #puts "Stop index is #{stop_index}"

  #   if start_index == stop_index
  #     # Look at the three special cases where the end points are the same
  #     # If both end points are equal, just need to update the value
  #     if q[start] == ranges[start_index][start] && q[stop] == ranges[stop_index][stop]
  #       ranges[start_index][value] += q[value]
  #     # If just the beginning points are equal, split into two elements
  #     elsif q[start] == ranges[start_index][start]
  #       range1 = (q[stop] + 1), ranges[start_index][stop], ranges[start_index][value]
  #       ranges[start_index] = ranges[start_index][start], q[stop], ranges[start_index][value] + q[value]    
  #       #ranges.insert(start_index + 1, range1) 
  #     # If just the ending points are equal, split in to two elements
  #     elsif q[start] == ranges[start_index][start]
  #       range1 = ranges[start_index][start], (q[start]-1), ranges[start_index][value]
  #       ranges[start_index] = q[start], ranges[start_index][stop], ranges[start_index][value] + q[value]     
  #       ranges.insert(start_index, range1)
  #     # Else need to split in to three range elements
  #     else
  #       # Create an endrange and add it to the array
  #       ranges.insert(start_index + 1, [(q[stop] + 1), ranges[start_index][stop], ranges[start_index][value] ])
  #       # Change the stop point for the range that currently exists
  #       ranges[start_index][stop] = (q[start] - 1)
  #       # Increase the value on q before adding it
  #       q[value] += ranges[start_index][value]
  #       ranges.insert(start_index + 1, q) 
  #     end
  #   # Else need to create new ranges for the beginning and ending endpoints  
  #   else
  #     # Change the ending range and add
  #     # Special case where the ending values are the same
  #     if ranges[stop_index][stop] == q[stop]
  #       ranges[stop_index][value] += q[value]
  #     else
  #       temp = ranges[stop_index][start]
  #       ranges[stop_index][start] = q[stop] + 1 
  #       ranges.insert(stop_index, [temp, q[stop], ranges[stop_index][value] + q[value] ])        
  #     end 
  #     # Change the starting range
  #     # Special case where the starting points are the same
  #     if ranges[start_index][start] == q[start]
  #       ranges[start_index][value] += q[value]
  #     else
  #       temp = ranges[start_index][stop]
  #       ranges[start_index][stop] = (q[start] -1)
  #       ranges.insert(start_index + 1, [q[start], temp, ranges[start_index][value] + q[value]])
  #     end
  #   end   
    
  #   #puts "ranges is now #{ranges.inspect}"
  # end

  # return ranges.sort_by{|x, y, z|z}[-1][value]