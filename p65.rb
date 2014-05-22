#euler
#65
#2 + 1(b)/1(a) 2 + (1)b/

require 'bigdecimal'
require 'bigdecimal/util'

k, a, b, a1, b1 = 2, 3, 1, 8, 3
while k < 1000 do
  p, q, k = 1, 1, k+1
  if  k%3 == 2  then
    q = 2*(k+1)/3
  end
  a, b, a1, b1 = a1, b1, p*a+q*a1, p*b+q*b1
  d = a / b
  d1 = a1 / b1 
end

puts (a.to_r.to_d/b.to_r.to_d).truncate(15).to_f
puts Math::E

z = a.to_s.split(//)

sum = z.inject{|sum, n| sum.to_i + n.to_i}
puts sum