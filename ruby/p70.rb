#euler
#69
#
#phi(x) = x*(1-1/f)*(1-1/f2)*...*(1-1/fn)
#
#where f1,f2,fn are the factors of the given integer x. for example :
#
#phi(60) = 60*(1-1/2)*(1-1/3)*(1-1/5) = 60x1/2*2/3*4/5 = 16

require "prime"

low = 2.0
low_n = 0
start = 10 ** 6
q = 10 ** 7

start.upto q do |n|
  b = n

  n.prime_division.each { |x| b *= (x[0] - 1).to_f / x[0] }

  x = n.to_i.to_s.split(//).sort.join.to_i
  y = b.to_i.to_s.split(//).sort.join.to_i

  z = n / b.to_f

  if x == y
    if z < low
      low = z
      low_n = n
      puts low
      puts low_n
    end
  end
end

puts n
