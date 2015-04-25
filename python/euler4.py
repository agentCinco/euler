#! /usr/bin/env python

# projecteuler.net
# 
# problem 
#

a = []

for i in range(1,999):
	for j in range(1,999):
		x = i * j
		if str(x) == str(x)[::-1]:
			a.append(x)

print max(a)