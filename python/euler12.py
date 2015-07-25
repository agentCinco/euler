#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 12
#

import pyprimes

n=199
Dn=2
cnt=0
x = pyprimes.primes()
p = 1000
primes = list(next(x) for i in range(p))

while cnt < 500:

    n = n+1
    n1 = n

    if n1 % 2 == 0:
        n1 = n1 / 2

    Dn1 = 1

    for i in range(p):
        if primes[i] * primes[i] > n1:
            Dn1 = Dn1 * 2
            break

        exp=1
        while n1 % primes[i] == 0:
            exp = exp + 1
            n1 = n1 / primes[i]

        if exp > 1:
            Dn1 = Dn1 * exp

        if n1 == 1:
            break

    cnt = Dn * Dn1
    Dn = Dn1

ans = n * (n-1) / 2

print ans
