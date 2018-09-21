#Project Euler
#Problem 36

sum = []

1_000_000.times do |x|
  if x.to_s == x.to_s.reverse and x.to_s(2) == x.to_s(2).reverse
    sum << x
  end
end

puts sum.inject { |x, n| x + n }
