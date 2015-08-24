#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 31
#

tot = 200
coins = [1, 2, 5, 10, 20, 50, 100, 200]

def change(tot, coins):
    ways = [0] * (tot + 1)
    ways[0] = 1
    for coin in coins:
        for j in range(coin, tot + 1):
            ways[j] += ways[j - coin]
    return ways[tot]

print(change(tot, coins))
