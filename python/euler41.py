#! /usr/bin/env python3
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 41
#

import pyprimesieve

primes = pyprimesieve.primes(7654321)

def pandigital(n):
    s = str(n)
    if ''.join(sorted(s)) == "1234567":
        return True
    return False

for p in reversed(primes):
    if pandigital(p):
        print(p)
        exit(0)
