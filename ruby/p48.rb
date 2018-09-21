#!/usr/bin/ruby

def fact(n)
  if n == 0
    1
  else
    n * fact(n - 1)
  end
end

x = fact(20)
#x *= x
y = fact(40)

puts y / (x ** 2)
