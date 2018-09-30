#! /usr/bin/env python3
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 33
#

from math import gcd

dp = 1
np = 1

for i in range(11):
    for d in range(1, i):
        for n in range(1, d):
            if (n*10+i)*d == n*(i*10+d):
                dp = d * dp
                np = n * np

answer = int(dp / gcd(dp, np))

print(answer)
