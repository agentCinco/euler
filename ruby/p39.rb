#project Euler
#problem
# x = 2mn, y = m^2 - n^2, z = m^2 - n^2 where m is opposite polarity of n (odd v even)

a = []
high = 0
high_num = 0

1.upto 500 do |m|
  1.upto 500 do |n|
    if m > n
      z = m ** 2 + n ** 2
      if Math.sqrt(z) % 1 == 0
        a << m + n + Math.sqrt(z).to_i
      end
    end
  end
end

a.uniq.each do |p|
  if p <= 1000
    if a.count(p) > high
      high = a.count(p)
      high_num = p
    end
  end
end

puts high
puts high_num
