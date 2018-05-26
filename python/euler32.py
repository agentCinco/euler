#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 32
#

result = set([])

nums = "123456789"

for i in range(1, 100):
    for j in range(10, 10000 // i):
        x = i * j
        z = "".join(sorted(str(i) + str(j) + str(x)))
        if z == nums:
            result.add(x)

print(sum(result))
