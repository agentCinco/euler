#euler project
#problem 92

sleep 5

a = Time.now

sum = 0

def chain(n)

x = 0
    
for i in 0..((n.to_s.length.to_i) -1)
    x += (n.to_s[i].to_i)**2
end
    
n = x
   
if n == 1
    return false
elsif n == 89
    return true
else
    chain(n)
end

end

1.upto 10_000_000 do |i|

if chain(i) == true
    sum += 1
end

end

b = Time.now

puts sum
puts "Took #{b - a} seconds."