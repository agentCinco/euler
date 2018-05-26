#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 28
#

a = []
b, c = 1, 0

for i in range(500):
    c += 2
    for j in range(4):
        b += c
        a.append(b)

print(sum(a))
