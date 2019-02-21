def timeConversion(s)
  time = s.split(':')
  sec = time.last.split("")

  if (sec[2].downcase == 'p') 
    if time[0].to_i < 12
        time [0] = (time[0].to_i + 12).to_s
    end
  elsif time[0] == '12'
    time [0] = '00'
  end

  time.pop
  timeS = time.push(sec[0] + sec[1]).join(":")
  puts timeS
  
end

time = "07:05:45PM"
time1 = "12:45:00PM"
time2 = "12:45:00AM"
time3 = "01:00:00AM"
time4 = "01:59:59PM"

timeConversion(time)
timeConversion(time1)
timeConversion(time2)
timeConversion(time3)
timeConversion(time4)