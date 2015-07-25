#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 12
#
# Brute force solution ;)

n = 1
m = 1
high = 0
z = 0

while z < 500:
    n = (n + m) + 1
    m = m + 1
    z = 0

    for i in range(1, n):
        if n % i == 0:
            z = z + 1
            i = i + 1
            if z > high:
                high = z
                print n
print n
