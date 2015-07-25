#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 15
#
# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
#
# How many such routes are there through a 20×20 grid?

grid = 20
paths = 1
i = 0

for i in range(grid):
    paths *= (2 * grid) - i
    paths /= i + 1

print paths
