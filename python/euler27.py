#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 27
#

from pyprimesieve import primes

s = 0
c = (0, 0)
p = set(primes(751000))

for a in range(-999, 0, 2):
    for b in range(-a, 1000, 2):
        n = 1
        while (n * (n + a) + b) in p:
            n += 1
        if n > s:
            s = n
            c = (a, b)

print(c[0] * c[1])
