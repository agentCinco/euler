#! /usr/bin/env python3
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 97
#

mod = 10000000000
result = 28433 * pow(2, 7830457, mod) +1
result %= mod
print(result)