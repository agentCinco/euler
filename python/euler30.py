#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 30
#

result = 0

def digit_sum(n, exp):
    l = list(str(n))
    d = list(map(int, l))
    t = sum([i**exp for i in d])
    if t == n:
        return n
    else:
        return 0

for i in range(4150, 9*9**5):
    x = digit_sum(i, 5)
    if x != 0:
        result += i

print(result)
