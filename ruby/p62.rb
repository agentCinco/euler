#euler
#62

a = Time.now

cubes = []

5000.upto 8500 do |i|
  cubes << i ** 3
end

cubes.each do |i|
  x = i.to_s.split(//).sort.join
  y = 0
  list = []

  0.upto (cubes.length) do |j|
    if cubes[j].to_s.split(//).sort.join == x
      # puts "cubes #{cubes[j]}"
      # puts "x     #{x}"
      y += 1
      list << cubes[j]
    end
  end

  if y == 5
    puts list.sort[0]
    b = Time.now

    puts b - a
    exit
  end
end
