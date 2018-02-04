//
// projecteuler.net
//
// problem 63
//

package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	answer := 0

	z := 0
	for i := 1; i < 9; i++ {
		for j := 1; j < 21; j++ {
			x := float64(i)
			y := float64(j)
			z = len(strconv.Itoa(int(math.Pow(x, y))))
			if z == j {
				answer += 1
			} else if z > j {
				break
			}
		}
	}
	fmt.Printf("%v\n", answer)
}
