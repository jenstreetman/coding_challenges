#Finds the greatest common factor of both l and b, divides both numbers by that factor and then multiplies them
def restaurant(l, b)
  factors = []

  #find all the factors of the first number  
  l.times do |factor|
    if l % (factor + 1) == 0
      factors << (factor +1)
    end
  end

  puts "Factors are #{factors.inspect}"
  #delete all factors that aren't common to the sencond number
  factors.reject!{ |factor| b % factor != 0}
   
  puts factors.inspect

  #Get the largest factor, divide the 2 numbers by it and multiply them
  gcm = factors.last
  puts "GCM is #{gcm}"
  return ( (l/gcm) * (b/gcm))  

end


puts restaurant 344, 734


# 11 test cases <%= 11
# 38 751
# 344 734
# 165 635
# 297 667
# 917 264
# 544 642
# 254 914
# 612 50
# 94 707
# 564 417
# 145 246.label :attribute %><br />


# expected answers
# 28538
# 63124
# 4191
# 198099
# 242088
# 87312
# 58039
# 7650
# 66458
# 26132
# 35670