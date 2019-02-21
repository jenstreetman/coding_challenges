# def solve(arr, queries)
# result = []
#   queries.size.times do |pair|
#     if arr[queries[pair-1][0]] % 2 == 0 
#       result << "Even"
#     else
#       result << "Odd"
#     end
#   end

#   return result

# end




# def find(x, y, arr)
#   #puts "x is #{x}, y is #{y}"
#   if x > y 
#     return 1
#   end
#   #puts "A is #{arr[x-1]}"
#   ans = ((arr[x-1])**(find((x+1), y, arr)))
#   #puts "ans is #{ans}"
#   if ans > 10
#     unless (ans % 10 == 0) 
#       ans = ans % 10
#     end
#   end
#   return ans

# end  

# This function takes into account tnat an even number to any power will still be even, and an 
# odd number to any power will still be odd, unless it is being raised to the power of 0, in 
# which case it will be odd, unless it is 0**0, which is 0 and even. Instead of calculating 
# the iteritve powers, it only determines if
# the result of A[x]**A[y] will be even or odd at each stage
def find(x, y, arr)
    #puts "x is #{x}, y is #{y}}"
    #puts "arr[x-1] is #{arr[x-1]}"

    o_o_e = false
  
    #puts "x is #{x}, y is #{y}, arr[num] is #{arr[num]}"
    #puts "arr[num-1] is #{arr[num-1]}"
    unless arr[x]==0 && x != y
      o_o_e = arr[x-1].even? 
    else
      unless arr[x-1] == 0
        o_o_e = false
      else
        o_o_e = true
      end
    end
       return o_o_e
  end
 


def solve(arr, queries)
  #puts "queries is #{queries}"
  result = []
  queries.size.times do |n|
    if find(queries[n][0], queries[n][1], arr)
      result << "Even"
    else
      result << "Odd"
    end
  end

  return result  

end


fptr = File.open("./input04.txt", "r")
N    = fptr.readline.rstrip.to_i
arr  = fptr.readline.split
arr.map! { |num| num.to_i }
Q = fptr.readline.rstrip.to_i
queries = []

Q.times do |pairs|
  pair = fptr.readline.split
  pair.map! { |num| num.to_i }
  queries << pair
end

fptr.close()


result = solve arr, queries

file_out = File.open("./answers04.txt", "w")

file_out.write result.join "\n"
file_out.write "\n"

file_out.close()
#puts result
