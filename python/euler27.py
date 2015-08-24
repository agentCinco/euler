#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem
#

from pyprimesieve import primes

s = 0
c = (0, 0)
#optimizing
p = set(primes(751000))

for a in range(-999, 0, 2):
    for b in range(-a, 1000, 2):
        n = 1
        while (n*(n+a) + b) in p:
        #while p.issuperset([n*(n+a) + b]):
            n += 1
        if n > s:
            s = n
            c = (a, b)

print(c[0]*c[1])
