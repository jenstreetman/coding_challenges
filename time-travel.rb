require 'date'

def dayOfProgrammer(year)
  
  d = Date.ordinal(year, 256)

  if (year < 1918) && (year % 100 == 0)
    d = d - 1
  elsif year == 1918
    d = d + 13
  end

  return "#{d.mon}.#{d.strftime('%m')}.#{d.year}"

end

puts dayOfProgrammer(1800)