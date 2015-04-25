#project euler
#problem 46
#What is the smallest odd composite that cannot be written as the sum of a prime and twice a square?

require 'mathn'

z = []

Prime.each do |x|

if x > 9999
  break
end

  1.upto 100 do |i|

    t = x + 2*(i**2)
    
    z << t
    
  end

end

5.upto 10000 do |i|

  if Prime.prime?(i) == false and i % 2 != 0 and z.include?(i) == false
    puts i
    exit
  end
end