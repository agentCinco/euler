#project euler
#problem 49
#
#The arithmetic sequence, 1487, 4817, 8147, in which each of the terms
#increases by 3330, is unusual in two ways: (i) each of the three terms
#are prime, and, (ii) each of the 4-digit numbers are permutations of one
#another.
#
#There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes,
#exhibiting this property, but there is one other 4-digit increasing sequence.
#
#What 12-digit number do you form by concatenating the three terms in this
#sequence?

require "mathn"
p = []

class Array
  def move(from, to)
    insert(to, delete_at(from))
  end
end

def permute(n)
  t = n.to_s.split(//).to_a
end

Prime.each do |x|
  if x > 9999
    break
  end

  if x.to_s.length == 4 and x.to_s.include?("0") == false
    p << x
  end
end

puts p
