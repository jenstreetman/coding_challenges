def staircase(n)

  i = 1
  n.times do
    (n-i).times do 
      print ' '
    end
    i.times do
      print '#'
    end
    i += 1;
    print "\n"
  end

end

staircase(100)