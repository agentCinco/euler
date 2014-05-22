#euler
#120

sum = 0

3.upto 1000 do |a|

n = 2

while 2 * n < a

  n = n + 1

end

n = n - 1

sum = sum + ((2 * a) * n)

end

puts sum

#332944222
#333082500