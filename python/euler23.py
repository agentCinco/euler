#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 23
#
# A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
#
# A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.
#
# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.
#
# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

limit = 20161 # https://oeis.org/A048242

abundantNums = []
abundantTwoX = []
allNums = set(range(1, limit+1))

# Needs improvement
def factorize(n):
    factors = []
    for i in range(1, n + 1):
        if n % i == 0:
            factors.append(i)
    return factors

def abundant(n):
    if sum(factorize(n)) > 2*n:
        return True
    else:
        return False

for i in range(12, limit):
    if abundant(i):
        abundantNums.append(i)

for i in range(len(abundantNums)):
    for j in range(i, len(abundantNums)):
        x = abundantNums[i] + abundantNums[j]
        if x < limit:
            abundantTwoX.append(x)

answer = sum(list(allNums - set(abundantTwoX)))

print(answer)
