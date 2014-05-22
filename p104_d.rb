#euler
#104

def pandigital?(n)
  return false if n < 10**8
  return n.to_s.split(//).sort.map{ |i| i.to_i } == [*1..9] 
 end

i,a,b,x,y = 1,1,1,1,1

while true do

  if pandigital?(a) and pandigital?(x.to_s[0..8].to_i) then
   puts i
     exit
   end
   
  puts "a = #{a}"
  puts "b = #{b}"
  puts "x = #{x}"
  puts "y = #{y}"
  
  a, b = b % (10**9), (a+b) % (10**9)
  x, y = y, x+y
  
  puts "a = b % 10**9 = #{a}"
  puts "b = a+b % 10**9 = #{b}"
  puts "x = y = #{x}"
  puts "y = x+y = #{y}"
  #sleep 1
  
  if y >= 10**18 then x /= 10; y /= 10 end

  i+=1

 end