#euler
#69
#
#phi(x) = x*(1-1/f)*(1-1/f2)*...*(1-1/fn)
#
#where f1,f2,fn are the factors of the given integer x. for example :
#
#phi(60) = 60*(1-1/2)*(1-1/3)*(1-1/5) = 60x1/2*2/3*4/5 = 16

require "prime"

high = 0.0

3.step(1_000_000, 3) do |n|
  y = n

  n.prime_division.each { |x| y *= (x[0] - 1).to_f / x[0] }

  z = n.to_f / y

  if z > high
    high = z
    puts "n/phi(n) = #{z}"
    puts "n = #{n}"
  end
end
