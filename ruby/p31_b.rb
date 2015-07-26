class Integer  
  
  # calculates integer partitions for given number using array of elements  
  # http://en.wikipedia.org/wiki/Integer_partition  
  # @see project euler #31  
  def integer_partitions(pArray, p=0)  
    if p==pArray.length-1  
      1  
    else  
      self >= 0 ? (self - pArray[p]).integer_partitions(pArray ,p) + self.integer_partitions(pArray,p+1) : 0  
    end  
  end  
end  

answer = 200.integer_partitions([200,100,50,20,10,5,2,1]) 

puts answer