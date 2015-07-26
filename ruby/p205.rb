#p125
#d6 vs d4

# 1 1
# 1 2 w
# 1 3 w
# 1 4 w

# 2 1
# 2 2
# 2 3 w
# 2 4 w

# 3 1
# 3 2
# 3 3
# 3 4 w

# 4 1
# 4 2
# 4 3
# 4 4

# 5 1
# 5 2
# 5 3
# 5 4

# 6 1
# 6 2
# 6 3
# 6 4

x = 0
y = 0

1.upto 4 do |i|

1.upto 6 do |j|

if i > j
x += 1
end
y += 1


end
end

puts x.to_f / y