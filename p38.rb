#project euler 
#problem 38
#What is the largest 1 to 9 pandigital 9-digit number that can be formed as the concatenated product of an integer with (1,2, ... , n) where n  1?

class Array
    def pandigital?

        for i in 1..9
            if self.include?(i.to_s)
            else
                return false
            end
        end
        
    return true
        
    end
end

1.upto(999999) do |a|
b = 1
c = ""
    until false
    
        c += (a * b).to_s
        
        if c.length == 9
            if c.split(//).to_a.pandigital?
                puts c
            end
        elsif c.length > 9
            break
        end
        
        b += 1
    end
    
end