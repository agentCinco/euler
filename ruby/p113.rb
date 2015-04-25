#euler
#113


class Integer
  # calculates binomial coefficient of self choose k
  # not recommended for large numbers as binomial coefficients get large quickly... e.g. 100 choose 50 is 100891344545564193334812497256
  def choose(k)
    return 0 if (k > self)
    n = self
    r = 1
    1.upto(k) do |d|
      r *= n
      r /= d
      n -= 1
    end
    return r
  end
end

puts 110.choose(10) + 109.choose(9) - 10*100 - 2