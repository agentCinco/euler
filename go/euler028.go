//
// projecteuler.net
//
// problem 28
//

package main

import (
	"fmt"
)

func main() {
	a := []int{}
	b, c := 1, 0
	answer := 0

	for i := 0; i < 500; i++ {
		c += 2
		for j := 0; j < 4; j++ {
			b += c
			a = append(a, b)
		}
	}

	for _, v := range a {
		answer += v
	}

	fmt.Printf("%v\n", answer)
}
