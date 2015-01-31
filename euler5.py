#! /usr/bin/env python

# projecteuler.net
# 
# problem 5
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

limit = 20

def primes(n): 
	if n==2: return [2]
	elif n<2: return []
	s=range(3,n+1,2)
	mroot = n ** 0.5
	half=(n+1)/2-1
	i=0
	m=3
	while m <= mroot:
		if s[i]:
			j=(m*m-3)/2
			s[j]=0
			while j<half:
				s[j]=0
				j+=m
		i=i+1
		m=2*i+3
	return [2]+[x for x in s if x]

x = primes(limit)
y = []

for i in x:
	y.append(i)
	z = i * i
	if z < limit:
		while z < limit:
			z = z * i
			y.append(i)

print reduce(lambda a, b: a*b, y)