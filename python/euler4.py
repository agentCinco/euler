#! /usr/bin/env python

# projecteuler.net
#
# problem 4
#
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

a = []

for i in range(1, 999):
    for j in range(1, 999):
        x = i * j
        if str(x) == str(x)[::-1]:
            a.append(x)

print(max(a))
