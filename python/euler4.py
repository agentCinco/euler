#! /usr/bin/env python

# projecteuler.net
#
# problem 4
#
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

for i in range(999, 900, -1):
    for j in range(999, 900, -1):
        x = i * j
        if str(x) == str(x)[::-1]:
            print(x, i, j)
            exit()
