# euler
# 85

high = 0
high_num = 0

10.upto 100 do |m|
  10.upto 100 do |n|
    z = m * (m + 1) * n * (n + 1) / 4

    if z > high and z < 2_000_000
      high = z
      high_num = m * n
    end

    if z > 2_000_000
      break
    end
  end
end

puts high
puts high_num
