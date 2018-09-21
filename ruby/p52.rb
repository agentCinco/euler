#project euler
#problem 52
#
#It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.
#
#Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.

def alldigits(n, x)
  digits = n.to_s.split(//).to_a

  x.to_s.split(//).to_a.each do |check|
    if digits.include?(check)
    else
      return false
    end
  end

  return true
end

x = 0
y = 1

until x == 1
  if alldigits(y, (2 * y)) and alldigits(y, (3 * y)) and alldigits(y, (4 * y)) and alldigits(y, (5 * y)) and alldigits(y, (6 * y))
    x = 1
    puts y
  end

  y += 1
end

puts y
