#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 26
#

from pyprimesieve import primes
from sys import argv

try:
    value = int(argv[1])
except:
    value = 1000

def longest_recurring(n):
    for d in primes(n)[::-1]:
        p = 1
        while pow(10, p, d) != 1:
            p += 1
        if d-1 == p:
            return(d)

print(longest_recurring(value))
