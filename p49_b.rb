#project euler
#problem 49

require 'mathn'

z = []

Prime.each do |x|
  if x > 9999
    break
  end
  
  if x > 999
    z << x
  end
end

for i in z
    2.upto 4501 do |x|
    a = []
    b = []
    c = []
    
        if Prime.prime?(i + x) and Prime.prime?((i + x) + x)
        a = i.to_s.split(//)
        b = (i+x).to_s.split(//)
        c = ((i+x)+x).to_s.split(//)
        #puts "#{a.join} #{b.join} #{c.join}"
            if a.sort == b.sort and a.sort == c.sort

            puts "#{a.join} #{b.join} #{c.join}"

            end
        end
    end
end