def divisibleSumPairs(n, k, ar)
  count = 0

  (n-1).times do |i|
    (n-1-i).times do |j|
      if (ar[i] + ar[j+1+i]) % k == 0
        count += 1
      end
    end
  end

  return count

end


arr = [1, 3, 2, 6, 1, 2]

puts divisibleSumPairs 6, 3, arr