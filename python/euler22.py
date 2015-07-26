#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 22
#

x = 0

with open('../text/names_clean.txt') as f:
    names = f.read().split(',')

names[-1] = names[-1][0:-1]
names.sort()

a = {chr(64+i) : i for i in range(1, 27)}

for i in range(len(names)):
    y = 0
    for j in names[i]:
        y += a[j]
    x += y * (i + 1)

print x
