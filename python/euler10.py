#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 10
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

import pyprimes

x = pyprimes.primes()
y = list(next(x) for i in range(1999999))
z = sum(y)

print z
