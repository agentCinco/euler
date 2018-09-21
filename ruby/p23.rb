#!/usr/bin/ruby
#
# A perfect number is a number for which the sum of its proper divisors is exactly equal to the number.
# For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
#
# A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.
#
# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.
#
# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.
#

def factorize(orig)
  factors = {}
  factors.default = 0     # return 0 instead nil if key not found in hash
  n = orig
  i = 2
  sqi = 4                 # square of i
  while sqi <= n
    while n.modulo(i) == 0
      n /= i
      factors[i] += 1
      # puts "Found factor #{i}"
    end
    # we take advantage of the fact that (i +1)**2 = i**2 + 2*i +1
    sqi += 2 * i + 1
    i += 1
  end

  if (n != 1) && (n != orig)
    factors[n] += 1
  end
  factors
end

# def printfactorhash(orig, factorcount)
# print format("%-10d ", orig)
# if factorcount.length == 0
# print "PRIME"
# else
# sorts after number, because the hash keys are numbers
# factorcount.sort.each { |factor,exponent|
# print factor
# if exponent > 1
# print "**", exponent
# end
# print " "
# }
# end
# puts
# end

# for arg in ARGV
# n = arg.to_i
# mfactors = factorize(n)
# printfactorhash(n, mfactors)
# end

a = Array.new

for i in (12..30000)
  x = factorize(i)
  z = Array.new
  y = 0

  if x.length > 0
    # Sigma function
    x.each do |factor, exponent|
      if exponent > 1
        z << (factor ** (exponent + 1) - 1) / (factor - 1)
      else
        z << factor + 1
      end
    end

    y = z.inject { |product, element| product * element }
    z.clear
  end

  if y > i * 2
    a << i
    #puts "I is #{i} and Y is #{y} and is therefore abundant?"
  end
end

#create an array of all sums of two abundant numbers
b = Array.new

x = 0; while x < a.length
  for i in (1..a.length)
    b << (a[x] + a[i - 1])
  end

  x += 1
end

b.uniq!

c = Array.new

for i in (1..28123)
  if !b.include?(i)
    c << i
  end
end

sum = c.inject { |sum, n| sum + n }
puts sum
