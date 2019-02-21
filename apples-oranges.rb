def countApplesAndOranges(s, t, a, b, apples, oranges)
  numApples = 0
  numOranges = 0

  apples.each do |land|
     if ((land + a) >= s && (land + a) <= t)
      numApples += 1
     end
    end

    oranges.each do |land|
      if ((b - land) <=t &&  (b - land) >= s)
        numOranges += 1
      end
    end

    puts numApples
    puts numOranges

end


apples = [-2, 2, 1]
oranges = [5, -6]

countApplesAndOranges 7, 11, 5, 15, apples, oranges