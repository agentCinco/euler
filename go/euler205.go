//
// projecteuler.net
//
// problem 205
//

package main

import (
	"fmt"
)

func main() {
	x, y := 1.0, 1.0
	for i := 1; i < 4; i++ {
		for j := 1; j < 6; j++ {
			if i > j {
				x++
			}
			y++
		}
	}

	answer := x / y
	fmt.Printf("%v\n", x)
	fmt.Printf("%v\n", y)
	fmt.Printf("%v\n", answer)
}
