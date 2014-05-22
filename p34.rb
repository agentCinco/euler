#Project Euler
#Problem 34

sum=0

def fact(n)
  if n.to_i == 0
    1
  else
    n.to_i * fact(n.to_i-1)
  end
end


145.upto(1000000) do |a|
y=0

	for x in 0..a.to_s.length-1
	y += fact(a.to_s[x])
	end

if a == y
puts "Eureka! #{y}"
sum += a
end
	
end

puts "sum = #{sum}"