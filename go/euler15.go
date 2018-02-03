//
// projecteuler.net
//
// problem 15
//

package main

import (
	"fmt"
)

func main() {
	grid := 20
	paths := 1

	for i := 0; i < grid; i++ {
		paths *= 2*grid - i
		paths /= i + 1
	}
	fmt.Printf("%v\n", paths)
}
