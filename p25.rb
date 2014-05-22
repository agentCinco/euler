#!/usr/bin/ruby

a = 1
b = 1
c = 0
d = 2

until c.to_s.length() == 1000
d+=1
c = a + b
a = b
b = c
end

puts d.to_s
puts c.to_s 
