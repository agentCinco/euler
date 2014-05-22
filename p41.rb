#project euler
#problem 41
#largest pandigital prime
#

require 'mathn'

class Array
    def pandigital?

        for i in 1..(self.length.to_i)
            if self.include?(i.to_s)
            else
                return false
            end
        end
        
    return true
        
    end
end

Prime.each do |x|

    if x.to_s.length >= 7 and x.to_s.split(//).to_a.pandigital?
        puts "Found one! #{x}"
    end
    
    if x.to_s.length >= 8
        break
    end
    
end