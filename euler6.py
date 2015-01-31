#! /usr/bin/env python

# projecteuler.net

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

x = 101
a = 0

for i in range(1, x):
	a += i**2

y = sum(range(1,x))
z = y**2

print z - a