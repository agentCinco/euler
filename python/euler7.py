#! /usr/bin/env python

# projecteuler.net
#
# problem 7
#
# What is the 10 001st prime number?

import pyprimes

x = pyprimes.nth_prime(10001)

print(x)
