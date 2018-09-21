#ProjectEuler.net
#Problem 26
#
#Find the value of d  1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.

require "bigdecimal"
require "bigdecimal/util"

high = 0
n = BigDecimal("1")

start = Time.now

1.upto 100 do |d|
  d = d.to_r.to_d
  x = n / d

  puts x.to_s("F")

  # if x.length > high
  # high = i
  # end

end

stop = Time.now

puts high
puts stop - start
