#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 23
#

a = []
b = []

def factors(n):
    return set(reduce(list.__add__,
    ([i, n//i] for i in range(1, int(n**0.5) + 1) if n % i == 0)))

for i in range(12, 20161):
    f = factors(i)
    f.discard(i)
    if sum(f) > i:
        a.append(i)

for i in a:
    for j in a:
        if j < i:
            break
        else:
            b.append(i+j)

b = set(b)
p = set(range(1,20161))
missing = p - b
b = list(b)
b.sort()
print b
print sum(missing)
