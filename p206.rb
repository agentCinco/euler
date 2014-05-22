#Find the unique positive integer whose square has the form 1_2_3_4_5_6_7_8_9_0,
#where each “_” is a single digit.

#1058921220.upto(1389026623) do |i|

a = Time.now

1058921220.step(1389026623,10) do |i|

t = (i**2)

if t % 1000 == 900
else
  next
end

if t.to_s[0] == "1"
else
  next
end

if t.to_s[2] == "2"
else
  next
end

if t.to_s[4] == "3"
else
  next
end

if t.to_s[6] == "4"
else
  next
end

if t.to_s[8] == "5"
else
  next
end

if t.to_s[10] == "6"
else
  next
end

if t.to_s[12] == "7"
else
  next
end

if t.to_s[14] == "8"
else
  next
end

if t.to_s[16] == "9"
else
  next
end

if t.to_s[18] == "0"
else
  next
end

puts i
puts t

end

b = Time.now

puts b - a