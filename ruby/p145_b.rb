#Euler
#145
# Some positive integers n have the property that the sum [ n + reverse(n) ] consists entirely of odd (decimal) digits.
# For instance, 36 + 63 = 99 and 409 + 904 = 1313. We will call such numbers reversible; so 36, 63, 409, and 904 are
# reversible. Leading zeroes are not allowed in either n or reverse(n).
#
# There are 120 reversible numbers below one-thousand.
#
# How many reversible numbers are there below one-billion (109)?

a = Time.now

sum = 0

class Integer
  def bouncy?
    t = self.to_s.split(//)

    t.each do |z|
      if z.to_i % 2 == 0
        return false
      end
    end

    return true
  end
end

1.upto(10000) do |i|
  if i.to_s[-1].to_i == 0
    next
  end

  x = i + i.to_s.reverse.to_i

  if x % 2 == 0
    next
  elsif x.bouncy?
    sum += 1
  end
end
b = Time.now
puts sum

puts b - a
