# Euler 39
# http://projecteuler.net/index.php?section=problems&id=39
# If p is the perimeter of a right angle triangle with
# integral length sides, {a,b,c}, there are exactly three
# solutions for p = 120.
#
# {20,48,52}, {24,45,51}, {30,40,50}
#
# For which value of p <= 1000, is the number of solutions
# maximised?
# timer_start = Time.now

# right_triangles = Hash.new(0)

# 1.upto(500) { |a|
# (a+1).upto(500) { |b|
# (b+1).upto(500) { |c|
# break if (a + b + c > 1000)
# if ((a**2 + b**2) == c**2)
# right_triangles[a + b + c] += 1
# end
# }
# }
# }

# Return max based on key [1000, 1]
# puts right_triangles.max

# Returns max value (8) which is the max count
# puts right_triangles.values.max

# What we really want -- return the key with the max value
# http://stackoverflow.com/questions/2562256
# puts right_triangles.max {|a,b| a[1] <=> b[1]}  #=> [840, 8]

# puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
# Elapsed Time: 7421.424 milliseconds

timer_start = Time.now

right_triangles = []

1.upto(500) { |a|
  (a + 1).upto(500) { |b|
    (b + 1).upto(500) { |c|
      break if (a + b + c > 1000)
      if ((a ** 2 + b ** 2) == c ** 2)
        right_triangles << a + b + c
      end
    }
  }
}

# http://stackoverflow.com/questions/2562256
def most_common_value(a)
  a.group_by do |e|
    e
  end.values.max_by(&:size).first
end

puts most_common_value(right_triangles)

puts "Elapsed Time: #{(Time.now - timer_start) * 1000} milliseconds"
# Elapsed Time: 7463.427 milliseconds
