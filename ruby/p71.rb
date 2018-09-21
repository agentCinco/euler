#euler
#71

high, high_num = 0, 0
test = 3.0 / 7

a = Time.now

1.upto 1_000_000 do |i|
  x = (3.0 / 7 * i).floor
  y = x.to_f / i

  if (x.gcd i) != 1 then next end

  if y < test and y > high then high, high_num = y, x end
end

b = Time.now

puts b - a
puts high_num
