#! /usr/bin/env python

# projecteuler.net
#
# problem 2
#
# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

# func to create array of fibonacci numbers


def fib(n):
    result = []
    a, b = 0, 1
    while a < n:
        result.append(a)
        a, b = b, a + b
    return result


f4m = fib(4000000)

print(sum(filter(lambda x: x % 2 == 0, f4m)))
