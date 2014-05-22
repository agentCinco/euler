def modPow(x, r, m)
    y = r
    z = x
    v = 1
    while y > 0
        u = y % 2
        t = y / 2
        if u == 1
            v = (v * z) % m
        end
        z = z * z % m
        y = t
    end
    return v
end


def miller_rabin_pass(a, n)
    d = n - 1
    s = 0
    while d % 2 == 0 do
        d >>= 1
        s += 1
    end


    a_to_power = modPow(a, d, n)
    if a_to_power == 1
        return true
    end
    for i in 0...s do
        if a_to_power == n - 1
            return true
        end
        a_to_power = (a_to_power * a_to_power) % n
    end
    return (a_to_power == n - 1)
end


def miller_rabin(n)
    k = 20
    for i in 0...k do
        a = 0
        while a == 0
             a = rand(n)
        end
        if (!miller_rabin_pass(a, n))
            return false
        end
    end
    return true
end 


# if ARGV[0] == "test"
    # n = ARGV[1].to_i
    # puts (miller_rabin(n) ? "PRIME" : "COMPOSITE")
# elsif ARGV[0] == "genprime"
    # nbits = ARGV[1].to_i
    # while true
        # p = rand(2**nbits)
        # if (p % 2 == 0)
            # next
        # elsif (p % 3 == 0)
            # next
        # elsif (p % 5 == 0)
            # next
        # elsif (p % 7 == 0)
            # next
        # end

        # if miller_rabin(p)
            # puts "#{p}"
            # break
        # end
    # end
# end

p = 0
mr = 0

require 'prime'

sleep 1

a = Time. now
1.upto 1_000 do |i|
if i.prime?
  p += 1
end
end
b = Time.now

sleep 1

c = Time.now
1.upto 1_000 do |i|
if miller_rabin(i)
  mr += 1
end
end
d = Time.now

puts p
puts b - a
puts mr
puts d - c








