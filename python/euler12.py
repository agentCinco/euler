#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 12
#

from pyprimesieve import primes

n = 199
Dn = 2
cnt = 0
p = 1000
prime = primes(p)

while cnt < 500:

    n = n + 1
    n1 = n

    if n1 % 2 == 0:
        n1 = n1 / 2

    Dn1 = 1

    for i in range(p):
        if prime[i] * prime[i] > n1:
            Dn1 = Dn1 * 2
            break

        exp = 1
        while n1 % prime[i] == 0:
            exp = exp + 1
            n1 = n1 / prime[i]

        if exp > 1:
            Dn1 = Dn1 * exp

        if n1 == 1:
            break

    cnt = Dn * Dn1
    Dn = Dn1

ans = int(n * (n - 1) / 2)

print(ans)
