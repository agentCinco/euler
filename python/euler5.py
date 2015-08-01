#! /usr/bin/env python

# projecteuler.net
#
# problem 5
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

import pyprimes

limit = 20
p = []
y = []

for i in range(limit):
  if pyprimes.isprime(i):
    p.append(i)

for i in p:
	y.append(i)
	z = i * i
	if z < limit:
		while z < limit:
			z = z * i
			y.append(i)

print reduce(lambda a, b: a*b, y)
