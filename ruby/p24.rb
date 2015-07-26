#Project Euler
#problem 24
#million lexicographic permutation

a = [0,1,2,3,4,5,6,7,8,9].permutation(10).to_a

puts a[1000000 -1].join()