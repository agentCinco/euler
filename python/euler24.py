#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 24
#
# million lexicographic permutation

import itertools

a = itertools.permutations([0,1,2,3,4,5,6,7,8,9], 10)
b = list(a)[999999]
print( ''.join(map(str, b)))
