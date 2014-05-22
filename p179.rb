#euler
#179

require 'prime'
high = 0
total = 0

class Integer
  def divisor_count
    sum = 1
    # prime_division return two dimensional array.
    # for 48, [3,1], [2,4] is the result
    self.prime_division.each do |x|
      sum *= (x[1] + 1)
    end
    sum
  end
end

y = (1).divisor_count

1.upto (10**7) do |x|
  
  z = (x+1).divisor_count
  
  if y == z
    total += 1
  end
  
  y = z
  
  if x % 100 == 0
   puts x
  end
  
end

puts total