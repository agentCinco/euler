#project euler
#problem 31
#
# In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:
#
# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
# It is possible to make £2 in the following way:
#
# 1£1 + 150p + 220p + 15p + 12p + 31p
# How many different ways can £2 be made using any number of coins?

a = 100
b = 50
c = 20
d = 10
e = 5
f = 2
g = 1

total = 1

0.upto(2) do |i|
  0.upto(4) do |j|
    0.upto(10) do |k|
      0.upto(20) do |l|
        0.upto(40) do |m|
          0.upto(100) do |n|
            0.upto(200) do |o|
              x = ((a * i) + (b * j) + (c * k) + (d * l) + (e * m) + (f * n) + (g * o))
              if x == 200
                total += 1
                puts total
              end
            end
          end
        end
      end
    end
  end
end

puts total
