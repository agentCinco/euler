require "rational"
(1..1000).each do |d|
  if d == ((omega_0 = Math::sqrt(d)).to_i) ** 2
    puts d # skip if d is a square number
  else
    a = [(q = omega_0.floor)] # a_0 and q_1
    p = d - q ** 2 # p_1
    omega = 1 / (omega_0 - q) # omega_1
    i = 0

    while (c = Rational(1, a[i]); j = i; while (j -= 1) >= 0 do c = 1 / (a[j] + c); end
      (c.denominator) ** 2 - d * (c.numerator) ** 2 != 1)
      a[(i += 1)] = omega.floor
      q = p * a[i] - q
      p = (d - q ** 2) / p
      omega = (omega_0 + q) / p
    end

    printf("%d %d %d\n", d, c.denominator, c.numerator)
  end
end
