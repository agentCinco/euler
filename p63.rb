#euler project
#problem 63

a = Time.now

sum = 0

1.upto 9 do |i|
    1.upto 21 do |j|
    
        x = (i**j).to_s.length.to_i
    
        if x == j
            sum += 1
            puts "#{i} ** #{j}"
            puts sum
        elsif x > j
            break
        end
        
    end
end

b = Time.now

puts b - a

puts sum