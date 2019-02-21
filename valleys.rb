def countingValleys(n, s)
    up = 0
    down = 0
    in_valley = false
    valley_count = 0

    s.split("").each do |direction|

        puts "direction is #{direction}"

        if direction == "D"
            down += 1
        else 
            up += 1
        end 

        if down > up && !in_valley 
            puts "Should increase valley"
            in_valley = true
            valley_count += 1
            puts "valley_count is now #{valley_count}"
        end

        if down == up && in_valley
            in_valley = false
        end       
    end
    
    return valley_count

end

puts countingValleys 8, "UDDDUDUU"