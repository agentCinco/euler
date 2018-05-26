#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 25
#


def fib(n):
    a, b = 1, 1
    for i in range(n - 1):
        a, b = b, a + b
    return a


for i in range(10000):
    x = fib(i)
    if len(str(x)) == 1000:
        print(i)
        exit()
