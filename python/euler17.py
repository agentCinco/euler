#! /usr/bin/env python
# -*- coding: utf-8 -*-
# projecteuler.net
#
# problem 17
#
# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#
#
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of 'and' when writing out numbers is in compliance with British usage.

n = range(1, 1000)

def num_to_word( num ):

    ones = {'0': '',
            '1': 'one',
            '2': 'two',
            '3': 'three',
            '4': 'four',
            '5': 'five',
            '6': 'six',
            '7': 'seven',
            '8': 'eight',
            '9': 'nine'}

    teens = {'10': 'ten',
             '11': 'eleven',
             '12': 'twelve',
             '13': 'thirteen',
             '14': 'fourteen',
             '15': 'fifteen',
             '16': 'sixteen',
             '17': 'seventeen',
             '18': 'eighteen',
             '19': 'nineteen'}

    tens = {'2': 'twenty',
            '3': 'thirty',
            '4': 'forty',
            '5': 'fifty',
            '6': 'sixty',
            '7': 'seventy',
            '8': 'eighty',
            '9': 'ninety'}

    str_num = str(num)
    length = len(str_num)
    letters = 0

    if length == 1:
        letters = len(ones[str_num])

    if length == 2:
        if str_num[0] == "1":
            letters += len(teens[str_num])
        else:
            letters += len(ones[str_num[1]])
            letters += len(tens[str_num[0]])

    if length == 3:
        letters = 7
        if str_num[1] == "1":
            letters += len(teens[str_num[1:]])
            letters += len(ones[str_num[0]])
            letters += 3 # and
        elif str_num[1] == "0" and str_num[2] != "0":
            letters += len(ones[str_num[2]])
            letters += len(ones[str_num[0]])
            letters += 3 # and
        elif str_num[1:] == "00":
            letters += len(ones[str_num[0]])
        else:
            letters += len(ones[str_num[2]])
            letters += len(tens[str_num[1]])
            letters += len(ones[str_num[0]])
            letters += 3 # and

    return letters

x = 11 # one thousand

for i in n:
    # print i
    x += num_to_word(i)

print(x)
