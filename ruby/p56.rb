#Project Euler
#Problem 56

high = 0
high_num = []

10.upto(101) do |a|

  10.upto(101) do |b|

  sum = (a**b).to_s.split(//).to_a.inject {|sum, n| sum.to_i + n.to_i }

  if sum > high
    high = sum
	high_num.clear
	high_num << a
	high_num << b
  end
  
  end
  
end

puts high
puts "#{high_num}"