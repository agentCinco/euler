#! /usr/bin/env python3
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 100
#

b = 15
n = 21
target = 1000000000000
 
while n < target:
    b1 = 3 * b + 2 * n - 2
    n1 = 4 * b + 3 * n - 3
 
    b = b1
    n = n1

print(b)
