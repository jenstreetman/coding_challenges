def solution(m, a)
    n = a.length
    count = Array.new(m + 1)
    count.fill(0)
    maxOccurence = 1
    index = -1
    #puts "count[a] is #{count[a]}"
    for i in 0 .. n - 1
        if count[a[i]] >= 0
            tmp = count[a[i]]
            if tmp >= maxOccurence
                maxOccurence = tmp
                index = i
                puts "tmp is #{tmp} maxOccurance is #{maxOccurence} index is #{index}"
            end
            count[a[i]] = tmp + 1
        else
            count[a[i]] = 1
        end
        puts "count at the end of #{i} is #{count.inspect}, maxOccurance is #{maxOccurence} index is #{index}"
    end
    puts "count is #{count.inspect} and index is #{index}"
    puts a[index]
    return a[index]
end

m = 10
a = [1, 1, 1, 2, 2, 4, 5]
puts solution(m, a)
