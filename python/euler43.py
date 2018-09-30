#! /usr/bin/env python3
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 43
#

from math import sqrt

def isPentagonal(n, m):
    return sqrt(1 + 24 * (n - m)) + 1 == sqrt(1 + 24 * (n + m)) + 1

result = 0
i = 10
j = i-1
while 1:
    i+=1
    n = i * (3 * i - 1) / 2
    #j = i-1
    for j in range(i-1, j > 0):
        #j-=1
        m = j * (3 * j - 1) / 2
        print(n,m)
        if isPentagonal(n, m):
            result = n-m
            exit(0)
