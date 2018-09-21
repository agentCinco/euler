#euler
#76
#190569292

def p(k, n)
  if k > n
    return 0
  elsif k == n
    return 1
  else
    p(k + 1, n) + p(k, n - k)
  end
end

puts p(1, 100)
