k, a, b, a1, b1 = 2, 3, 2, 7, 5
i = 0
while k < 1000
  p, q, k = 1, 2, k + 1
  a, b, a1, b1 = a1, b1, p * a + q * a1, p * b + q * b1

  if a.to_s.length > b.to_s.length
    i += 1
  end
end

puts i
