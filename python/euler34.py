#! /usr/bin/env python3
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 34
#

f = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]
answer = 0

for i in range(10, 2540161):
    sum = 0
    n = int(i)
    while n > 0:
        d = int(n%10)
        n = n / 10
        sum += f[d]
        print(sum)
    
    if sum == i:
        answer += i
        print(answer)

print(answer)
