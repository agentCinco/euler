=begin
Let N be a positive integer and let N be split into k equal parts, r = N/k, so that N = r + r  + ... + r.
Let P be the product of these parts, P = r � r � ... � r = r^(k).

For example, if 11 is split into five equal parts, 11 = 2.2 + 2.2 + 2.2 + 2.2 + 2.2, then P = 2.2^(5) = 51.53632.

Let M(N) = P_(max) for a given value of N.

It turns out that the maximum for N = 11 is found by splitting eleven into four equal parts which leads to P_(max) = (11/4)^(4); that is, M(11) = 14641/256 = 57.19140625, which is a terminating decimal.

However, for N = 8 the maximum is achieved by splitting it into three equal parts, so M(8) = 512/27, which is a non-terminating decimal.

Let D(N) = N if M(N) is a non-terminating decimal and D(N) = -N if M(N) is a terminating decimal.

For example, SD(N) for 5 = N = 100 is 2438.

Find SD(N) for 5 = N = 10000.
=end

require "prime"

def dodiv(num, den, power)
  n = num.prime_division
  d = den.prime_division
  n.each { |i| i[1] *= power }
  d.each { |i| i[1] *= power }

  nd = []
  d.each { |i|
    ni = n.index { |j| j[0] == i[0] }
    if ni
      case n[ni][1] <=> i[1]
      when 1
        n[ni][1] -= i[1]
      when 0
        n.delete_at(ni)
      when -1
        i[1] -= n[ni][1]
        n.delete_at(ni)
        nd << i if i[1] > 0
      end
    else
      nd << i
    end
  }

  term = true
  nd.each do |i|
    next if i[0] == 2 || i[0] == 5
    term = false
    break
  end
  term
end

def logm(n, d, pow)
  pow * (Math.log(n) - Math.log(d))
end

MAX = 10000
sumd = 0
m = 1
5.upto(MAX) do |n|
  fm = logm(n, m, m)
  m.upto(n) do |i|
    fnew = logm(n, i, i)
    if fnew >= fm
      m = i
      fm = fnew
    else
      break
    end
  end
  term = dodiv(n, m, m)
  sumd += term ? -n : n
end

puts sumd
