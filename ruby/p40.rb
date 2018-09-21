#project euler
#problem 40

c = ""
x = 1

until c.length >= 1_000_000
  c += x.to_s
  x += 1
end

puts c[0].to_i * c[9].to_i * c[99].to_i * c[999].to_i * c[9999].to_i * c[99999].to_i * c[999999].to_i
