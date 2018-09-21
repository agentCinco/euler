#prime number benchmark

require "mathn"

def is_prime(n)
  ("1" * n) !~ /^1?$|^(11+?)\1+$/
end

a = []

sleep 10

a = Time.now

10.times do
  1.upto 1_000 do |x|
    is_prime(x)
  end
end

b = Time.now

# 1.upto 1_000_000 do |x|
# if is_prime(x)
# a << x
# end
# end

# a.each do |x|
# if Prime.prime?(x) == false
# puts "EPIC FAIL"
# end
# end

sleep 10

c = Time.now

10.times do
  1.upto 1_000 do |x|
    Prime.prime?(x)
  end
end

d = Time.now

puts "Using RegEx took #{b - a} seconds"
puts "Using Prime.prime?() took #{d - c} seconds"
