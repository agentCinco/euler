#projectEuler
#Problem 53
#How many, not necessarily distinct, values of  nCr, for 1  n  100, are greater than one-million?
# nCr = n!/r!*(n-r)!

def fact(n)
  if n == 0
    1
  else
    n * fact(n - 1)
  end
end

factorial = []

101.times do |i|
  factorial << fact(i)
end

x = 0

23.upto(100) do |n|
  1.upto(100) do |r|
    a = factorial[n]
    b = factorial[r]
    c = factorial[n - r]

    if a / (b * c) > 999999
      x += 1
    end
  end
end

puts "Win! #{x}"
