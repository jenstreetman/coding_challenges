def bestDivisor(int)

  arr = (1..int).to_a.select { |num| int % num == 0}
  
  arrH = {}
  arr.each do |a|
    arrH[a] = a
    if arrH[a] > 9
      arrH[a] = (arrH[a].to_s.split("").map {|num| num = num.to_i}).reduce(:+)
    end          
      
  end

  sorted = arrH.sort_by { |k, v| [v, -k] }
  puts sorted.inspect
  return sorted.last[0]

end


n = 100000

puts bestDivisor(n)


