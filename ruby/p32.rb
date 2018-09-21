#Project Euler
#Problem 32

sum = []

2000.times do |a|
  2000.times do |b|
    c = a * b
    test = c.to_s + a.to_s + b.to_s

    if test.to_s.length == 9
      if test.to_s.include?("5") and test.to_s.include?("1") and test.to_s.include?("2") and test.to_s.include?("3") and test.to_s.include?("4") and test.to_s.include?("6") and test.to_s.include?("7") and test.to_s.include?("8") and test.to_s.include?("9")
        sum << c
        puts test
      end
    end
  end
end

sum.uniq!

puts sum.inject { |x, n| x + n }
