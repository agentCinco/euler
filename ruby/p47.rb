require 'mathn'
x = 0
10001.upto(999999) do |i|
  if Prime.prime_division(i).length < 4
  x = 0
  end
  if Prime.prime_division(i).length == 4
    x += 1
  end
  if x == 4
    puts "HHHHHHEEEEEEEEEEEEYYYYYYYYYYYYY"
	puts "#{i-3} #{i-2} #{i-1} #{i}"
    exit
  end
end