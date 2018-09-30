#! /usr/bin/env python3
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 45
#

from math import sqrt
from time import sleep

def isPentagonal(n):
    x = (sqrt(1 + 24 * n) + 1.0) / 6.0
    print(n, x)
    sleep(10)
    if n == x:
        return True
    return False

i = 143
 
while True:
    i+=1
    answer = i * (2 * i - 1)
    print(answer)
    if isPentagonal(answer):
        break

print(answer)
