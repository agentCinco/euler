#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 21
#

from functools import reduce

n = 0

def factors(n):
    return set(
        reduce(
            list.__add__,
            ([i, n // i] for i in range(1, int(n ** 0.5) + 1) if n % i == 0),
        )
    )

for i in range(220, 10001):
    x = sum(factors(i)) - i
    if (sum(factors(x)) - x) == i and x != i:
        n += i

print(n)
