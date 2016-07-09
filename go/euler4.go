//
// projecteuler.net
//
// problem 4
//

package main

import (
	"fmt"
	"strconv"
)

func Reverse(s string) string {
	r := []rune(s)
	for i, j := 0, len(r)-1; i < len(r)/2; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	return string(r)
}

func Max(slice []int) int {
	max := slice[0]
	for index := 1; index < len(slice); index++ {
		if slice[index] > max {
			max = slice[index]
		}
	}
	return max
}

var a []int

func main() {
	for i := 999; i > 100; i-- {
		for j := 999; j > i; j-- {
			x := i * j
			s := strconv.Itoa(x)
			rs := Reverse(s)
			if s == rs {
				a = append(a, x)
			}
		}
	}
	fmt.Println(Max(a))
}
