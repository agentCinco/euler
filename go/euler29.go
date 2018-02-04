//
// projecteuler.net
//
// problem 29
//

package main

import (
	"fmt"
	"math"
)

func set(s []int) []int {
	if len(s) == 0 {
		return s
	}
	seen := make([]int, 0, len(s))
slice:
	for i, n := range s {
		if i == 0 {
			s = s[:0]
		}
		for _, t := range seen {
			if n == t {
				continue slice
			}
		}
		seen = append(seen, n)
		s = append(s, n)
	}
	return s
}

func main() {
	a := []int{}
	answer := 0

	for i := 2.0; i < 101.0; i++ {
		for j := 2.0; j < 101.0; j++ {
			a = append(a, int(math.Pow(i, j)))
		}
	}

	answer = len(set(a))
	fmt.Printf("%v\n", a)
	fmt.Printf("%v\n", answer)
}
