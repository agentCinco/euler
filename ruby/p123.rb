#euler
#123
#(p-1)^n + (p+1)^n is divided by pn2. Find n > 10^10

require "mathn"

n = 1
limit = (10 ** 10) / 2

Prime.each do |p|
  if n[0] == 1
    x = n * p
  else
    n += 1
    next
  end

  if x >= limit
    puts "n = #{n}"
    exit
  end

  n += 1
end
