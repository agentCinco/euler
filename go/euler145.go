//
// projecteuler.net
//
// problem 145
//

package main

import (
	"fmt"
	"math"
)

func main() {
	answer := 0.0

	for i := 2; i < 10; i++ {
		j := float64(i)
		if i%2 == 0 {
			n := math.Floor(j/2 - 1)
			answer += 20 * math.Pow(30, n)
		} else if i%4 == 3 {
			n := math.Floor(j / 4)
			answer += 100 * math.Pow(500, n)
		}

	}
	fmt.Printf("%v\n", answer)
}
