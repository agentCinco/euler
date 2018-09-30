#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 20
#

from math import factorial

answer = 0

for i in str(factorial(100)):
    answer += int(i)

print(answer)
