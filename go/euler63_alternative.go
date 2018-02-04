//
// projecteuler.net
//
// problem 63
//

package main

import (
	"fmt"
	"math"
)

func main() {
	answer := 0
	l := 0
	n := 1.0
	for l < 10 {
		l = int(math.Ceil(math.Pow(10, (n-1.0)/n)))
		answer += 10 - l
		n++
	}
	fmt.Printf("%v\n", answer)
}
