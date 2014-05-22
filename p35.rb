#Project Euler
#Problem 35
#
#The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.
#
#There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
#
#How many circular primes are there below one million?

require 'mathn'

a=[]
clean=[2,5]

Prime.each() do |prime|
  if prime < 1000000
    a << prime
  else
    break
  end
end

nums = [2,4,5,6,8,0]

a.each do |x|

  if x.to_s.include?(2.to_s) or x.to_s.include?(4.to_s) or x.to_s.include?(5.to_s) or x.to_s.include?(6.to_s) or x.to_s.include?(8.to_s) or x.to_s.include?(0.to_s)
  else
    clean << x
  end

end

a = clean

clean = [2,5]

def circle(arg1,arg2,arg3)

tmpstr = ""
tmparr = []

tmparr = arg1.to_s.split(//)

if tmparr.length > 1

  1.upto(tmparr.length-1) do

  tmpstr = tmparr.pop
  tmparr.reverse!
  tmparr << tmpstr
  tmparr.reverse!
  
    if arg2.include?(tmparr.join.to_i)
	puts tmparr.join
    else
      return false;
    end

  end
else
arg3 << tmparr.join.to_i
end
arg3 << tmparr.join.to_i
end

a.each do |x|

circle(x,a,clean)

end

clean.uniq!

puts clean
puts clean.length