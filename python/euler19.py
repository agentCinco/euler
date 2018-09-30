#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 19
#

from calendar import weekday

answer = 0

for i in range(1901, 2000):
    for j in range(1, 13):
        if weekday(i, j, 1) == 0:
            answer += 1

print(answer)
