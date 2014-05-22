#Project Euler
#Problem 29
#
#unique sums of a^b where a/ = 2-100

a=[]

2.upto(100) do |x|
  
  2.upto(100) do |y|
    a << x**y
  end

end

puts a.uniq.length