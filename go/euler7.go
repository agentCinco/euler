//
// projecteuler.net
//
// problem 7
//

package main

import (
	"fmt"
	"math/big"
)

func main() {
	x := 10001
	p := 0
	i := 0
	j := 0
	for i < x {
		j++
		if big.NewInt(int64(j)).ProbablyPrime(1) {
			i++
			p = j
		}
	}
	fmt.Printf("%v\n", p)
}
