x = 0
y = 0

require 'prime'

sleep 1

a = Time.now

8.upto 100_000 do |i|

if i % 2 == 0
  next
elsif i % 3 == 0
  next
elsif i % 5 == 0
  next
elsif i % 7 == 0
  next
else
end

if i.prime?
x += 1
end
end

b = Time.now

sleep 1

c = Time.now

8.upto 100_000 do |i|

if i % 2 == 0
  next
elsif i % 3 == 0
  next
elsif i % 5 == 0
  next
elsif i % 7 == 0
  next
else
  y += 1
end

end

d = Time.now

puts x
puts b - a
puts y
puts d - c

