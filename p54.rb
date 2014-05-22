#euler
#54

hand = []

file = File.new("poker.txt", "r")

while (line = file.gets)
hand << line.split(/ /)
end

file.close

puts hand.join