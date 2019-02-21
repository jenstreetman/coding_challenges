def pageCount(n, p)
    #
    # Write your code here.
    #

    if p==1 || p == n
        turns = 0
    elsif p > n/2
        if n % 2 == 0 && p % 2 == 1
            turns = ((n-p)/2) + 1
        else
            turns = (n-p)/2
        end
    else
        turns = p/2
    end
    return turns
end