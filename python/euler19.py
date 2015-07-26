#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 19
#

import calendar

year = 1901
x = 0

for i in range(0, 99):
    for j in range(1, 13):
        if calendar.weekday(year + i, j, 1) == 0:
            x += 1

print x
