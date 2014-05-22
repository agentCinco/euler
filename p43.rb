#project euler
#problem 43

require 'permutation'

y = 0

perm = Permutation.for("1234567890")

0.upto perm.last do |x|

perm.rank = x

a = perm.value

b = (a[1].to_s + a[2].to_s + a[3].to_s).to_i
c = (a[2].to_s + a[3].to_s + a[4].to_s).to_i
d = (a[3].to_s + a[4].to_s + a[5].to_s).to_i
e = (a[4].to_s + a[5].to_s + a[6].to_s).to_i
f = (a[5].to_s + a[6].to_s + a[7].to_s).to_i
g = (a[6].to_s + a[7].to_s + a[8].to_s).to_i
h = (a[7].to_s + a[8].to_s + a[9].to_s).to_i

if b % 2 == 0 and c % 3 == 0 and d % 5 == 0 and e % 7 == 0 and f % 11 == 0 and g % 13 == 0 and h % 17 == 0
    y += a.join.to_i
end

end

puts y