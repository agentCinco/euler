//
// projecteuler.net
//
// problem 6
//

package main

import (
	"fmt"
	"math"
)

func main() {
	x := 101.0

	b := 0.0
	for i := 0.0; i < x; i++ {
		b += i
	}

	c := 0.0
	for i := 0.0; i < x; i++ {
		c += math.Pow(i, 2)
	}

	d := math.Pow(b, 2)

	answer := d - c

	fmt.Printf("%v\n", int(answer))

}
