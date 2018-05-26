#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 29
#

a = []

for i in range(2, 101):
    for j in range(2, 101):
        a.append(i ** j)

print(len(set(a)))
