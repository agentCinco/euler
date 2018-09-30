#! /usr/bin/env python3
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 36
#

nums = []

for i in range(1000000):
    if str(i) == str(i)[::-1]:
        if "{0:b}".format(i) == "{0:b}".format(i)[::-1]:
            nums.append(i)

print(sum(nums))
