#euler
#80

require "bigdecimal"
require "bigdecimal/util"

sum = 0

2.upto 99 do |i|
  t = Math.sqrt(i)

  if t == Integer(t)
    next
  end

  x = i.to_r.to_d.sqrt(100).to_s.match(/[0-9]{100}/).to_s.split(//).inject { |sum, n| sum.to_i + n.to_i }

  sum += x
end

puts sum
