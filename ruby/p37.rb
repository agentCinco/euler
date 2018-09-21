#Project Euler
#problem 37
#

require "mathn"

sum = []

def primetruncate(arg)
  r = arg.to_s.split(//).to_a
  l = r.reverse

  while r.length > 1
    r.pop
    if Prime.prime?(r.join.to_i)
    else
      return false
    end
  end

  while l.length > 1
    l.pop
    l.reverse!
    if Prime.prime?(l.join.to_i)
    else
      return false
    end

    l.reverse!
  end

  return true
end

# Prime.each do |x|
# if x > 2_000_000
# break
# else
# primes << x
# end
# end

10.upto(1_000_000_000) do |x|
  if Prime.prime?(x) and Prime.prime?(x.to_s.split(//).to_a[0].to_i) and Prime.prime?(x.to_s.split(//).to_a[-1].to_i)
    if primetruncate(x)
      sum << x
      puts x
    end
  end

  if sum.length == 11
    break
  end
end

sum = sum.inject { |sum, n| sum + n }
puts sum
