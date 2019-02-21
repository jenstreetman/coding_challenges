def sockMerchant(n, ar)
  socks = {}
  pairs = 0

  ar.each do |color|
    if socks[color]
      socks[color] += 1
    else
      socks[color] = 1
    end
  end

  socks.each do |key, value|
   pairs += value/2
  end

  return pairs

end


arr = [10, 20, 20, 10, 10, 30, 50, 10, 20]

puts sockMerchant arr.length, arr