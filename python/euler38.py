#! /usr/bin/env python3
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 38
#

def pandigital(n):
    s = str(n)
    if ''.join(sorted(s)) == "123456789":
        return True
    return False

def concat(a, b):
    c = b
    while c > 0:
        a *= 10
        c //= 10
    return a + b

answer = 0
for i in range(9234, 9387):
    answer = concat(i, (2 * i))
    if pandigital(answer):
        print(answer)
        print(i)
        exit(0)
