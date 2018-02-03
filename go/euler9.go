/*
projecteuler.net

problem 9

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
*/
package main

import (
	"fmt"
	"math"
)

func is_triplet(a, b, c int) bool {
	fa := float64(a)
	fb := float64(b)
	fc := float64(c)
	if math.Pow(fa, 2)+math.Pow(fb, 2) == math.Pow(fc, 2) {
		return true
	} else {
		return false
	}
}

func main() {
	answer := 0
	c := 0
	for a := 1; a < 499; a++ {
		for b := 1; b < 499; b++ {
			c = 1000 - a - b
			if c < b {
				break
			}
			if is_triplet(a, b, c) {
				answer = a * b * c
				fmt.Printf("%v\n", answer)
			}
		}
	}
}
