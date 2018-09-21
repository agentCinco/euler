#euler
#71

sum = 0
up_lim = {}
low_lim = {}
limit = 12_000

a = Time.now

1.upto (limit - 1) do |n|
  (n + 1).upto limit do |d|
    if n * 2 >= d or n * 3 <= d
      next
    end

    if (n.gcd d) != 1
      next
    else
      sum += 1
    end
  end
end

b = Time.now

puts b - a
puts sum
