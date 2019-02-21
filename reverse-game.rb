def reverseGame(n, k)
  if k < (n/2) 
    puts ((k * 2) + 1)
  else
    puts (n-1-k)*2
  end

end

reverseGame 3, 1