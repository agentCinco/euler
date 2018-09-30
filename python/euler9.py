#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 9
#
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# fast naive approach
for a in range(2, 499, 2): # one number must be even
    for b in range(a, 499): # start where a stops
        for c in range(b, 499): # start where b stops
            if (a + b + c) == 1000:
                if (a ** 2 + b ** 2) == c ** 2:
                    print(a * b * c)
                    exit()
