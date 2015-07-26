#euler
# 183
#48861552

require 'prime'

class Integer
 def is_terminating?
 
    if self == 1
      return true
    end
    
    a = self.prime_division

    if a[0][0] == 2 and a[1][0] == 5 or a[0][0] == 5
      return true
    else
      return false
    end
end
end

e = Math::E
sum = 0
max = 100

5.upto max do |i|

n = i.to_f

a = (i/e).floor
b = (i/e).ceil

if (n/a)**a > (n/b)**b
  c = a/(i.gcd a)
  d = (n/(i.gcd a)).to_f
  # puts "#{d}  #{c}"
  # puts d/c
  # puts "---"
  # puts c.is_terminating?
else
  c = b/(i.gcd b)
  d = (n/(i.gcd b)).to_f
  # puts "#{d}  #{c}"
  # puts d/c
  # puts c.is_terminating?
end

if c.is_terminating? == true
  sum += -i
  puts "#{d}  #{c}"
  puts d/c
  puts "---"
else
  sum += i
  puts "#{d}  #{c}"
  puts d/c
  puts "---"
end

#puts c

end

puts sum