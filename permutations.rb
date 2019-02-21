
#ns are 0's and ms are 1s, solves the equation ((m-1)+n)!/(n!(m-1)!) % (10^9 + 7)
def solve (n, m)

  if m > 1
   return ((n+1)..(m-1+n)).inject(:*) / ((1..(m-1)).inject(:*))  % ((10**9)+7)
  else
    return 1
  end
    
  



end

puts solve 9999, 9999
