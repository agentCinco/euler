#project euler
#problem 50

require 'mathn'
primes = []
z = 0

Prime.each do |p|
    if p < 3943
        primes << p
    elsif p > 3943
        break
    end
end

until false
z = primes.inject {|sum, n| sum + n}

    if Prime.prime?(z) and z < 999999
        break
    else
        primes.reverse!
        primes.pop
        primes.reverse!
        z = 0
    end
end

puts z
puts primes.length