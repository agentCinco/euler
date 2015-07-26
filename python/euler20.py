#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 20
#

import math

n = math.factorial(100)
x = 0

for i in str(n):
    x += int(i)

print x
