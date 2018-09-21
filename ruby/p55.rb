#projectEuler
#problem 55
#Lychrel number is a number reversed and added back to itself that never becomes a palindromic number
#
#Number must be less than 28 digits

def islychrel(n)
  if n.to_s.length < 28
    n += n.to_s.reverse.to_i

    if ispalindrome(n)
      return false
    else
      n = islychrel(n)
    end
  else
    return true
  end
end

def ispalindrome(n)
  if n.to_s == n.to_s.reverse
    return true
  else
    return false
  end
end

total = 0

1.upto(9999) do |x|
  if islychrel(x)
    total += 1
  end
end

puts total
