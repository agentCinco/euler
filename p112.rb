#euler
#112 
#The case of the bouncy numbers below 1000 50% at 538


class Integer
  def int_array
    self.to_s.split('').map(&:to_i)
  end
  def bouncy?
    if self < 100
      return false
    end
    a = self.int_array
    i = 0
    d = 0
    1.upto (a.length)-1 do |x|
      if a[x] > a[x-1]
        i = 1
      elsif a[x] < a[x-1]
        d = 1
      end
    end
    if i+d == 2
      return true
    else
      return false
    end
  end
end

bouncy = 0
i = 99

loop do

i += 1

if i.bouncy?
  bouncy += 1
end

if bouncy/i.to_f >= 0.99
  puts i
  exit
end

end
