#euler
#187

require "prime"

semi_prime = 0
p = []
max = 10 ** 8

File.open("primes.txt", "r") do |f1|
  while line = f1.gets
    p << line.to_i
  end
end

puts "Let's begin!"
a = Time.now

0.upto (p.length) - 1 do |i|
  i.upto (p.length) - 1 do |j|
    # puts i
    # puts j
    x = (p[i] * p[j])

    if x < max
      #puts x
      semi_prime += 1
    else
      break
    end
  end
end

b = Time.now
puts
puts "Done!"
puts b - a
puts "Result = #{semi_prime}"
