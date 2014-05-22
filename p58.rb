#euler
#58
#in a square spiral what is the length of the side where the diagonals first count less than 10% prime numbers?

require 'prime'

int, dia, p_dia, len = 4,1,0,1
cor = [3,5,7,9]

loop do

0.upto 2 do |i| 
if cor[i].prime? then p_dia += 1 end
end

0.upto 3 do |i| 
cor[i] = cor[(i-1)] + int 
end

len += 2
int += 2
dia += 4

x = p_dia.to_f/dia

break if x < 0.1

end

puts len