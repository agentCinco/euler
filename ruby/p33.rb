#Project Euler
#Problem 33
#
#There are exactly four non-trivial examples of this type of fraction,
#less than one in value, and containing two digits in the numerator and denominator.
#
#If the product of these four fractions is given in its lowest common terms, find the value of the denominator.

z = []

def coprime(a, b)
  2.upto(99) do |i|
    if a % i == 0 and b % i == 0
      return false
    end
  end
end

11.upto(98) do |x|
  11.upto(98) do |y|
    if x != y and x % 10 != 0 and y % 10 != 0
      p = x.to_f / y.to_f

      if p < 1 and coprime(x, y) == false
        if x.to_s.split(//).to_a.first.to_f / y.to_s.split(//).to_a.first.to_f == p and x.to_s.split(//).to_a.last.to_f == y.to_s.split(//).to_a.last.to_f
          puts "#{x} - #{x.to_s.split(//).to_a.first} / #{y} -  #{y.to_s.split(//).to_a.first} = #{p}"
          z << p
        elsif x.to_s.split(//).to_a.first.to_f / y.to_s.split(//).to_a.last.to_f == p and x.to_s.split(//).to_a.last.to_f == y.to_s.split(//).to_a.first.to_f
          puts "#{x} - #{x.to_s.split(//).to_a.first} / #{y} - #{y.to_s.split(//).to_a.last} = #{p}"
          z << p
        end
      end
    end
  end
end

puts z.length
