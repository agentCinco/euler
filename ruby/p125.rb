#project euler
#problem 125

a = Time.now

z = []

bound = 10 ** 8
limit = Math.sqrt(bound)

1.upto (limit - 1) do |i|
  t = i ** 2

  (i + 1).upto limit do |x|
    t += x ** 2

    if t > bound
      break
    end

    if t.to_s == t.to_s.reverse
      #puts t
      z << t
    end
  end
end

b = Time.now

len = z.uniq.length
z = z.uniq.inject { |sum, n| sum + n }

puts ""
puts z
puts len
puts "Took #{b - a} seconds."
