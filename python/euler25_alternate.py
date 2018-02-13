#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 25
#

import math

log_phi = math.log(1.618033988749895)
x = math.log(10) * 999
y = math.log(5) / 2
n = math.ceil((x + y) / log_phi)

print(n)