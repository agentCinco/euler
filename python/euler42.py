#! /usr/bin/env python3
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 42
#

# https://oeis.org/A000217
tri = [1, 3, 6, 10, 15, 21, 28, 36, 45, 55, 66, 78, 91, 105, 120,136, 153, 171, 190]

fh = open("../text/words.txt", "r")

l = list(str(fh.read()).split(','))

fh.close()

numWords = []

a = {chr(64 + i): i for i in range(1, 27)}

for word in l:
    tmp = 0
    for i in word.strip('"'):
        tmp += a[i]
    numWords.append(tmp)

answer = 0

for n in numWords:
    if n in tri:
        answer += 1

print(answer)
