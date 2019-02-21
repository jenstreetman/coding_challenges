def simpleArraySum(ar)
    #
    # Write your code here.
    #
    total = 0
    ar.each{ |element| total += element }
    return total

end

arr1 = [1, 2, 3, 4, 5, 6]
result = simpleArraySum(arr1)
puts result