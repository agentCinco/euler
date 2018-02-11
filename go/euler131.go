//
// projecteuler.net
//
// problem 131
//

package main

import (
	"fmt"
	"math/big"
)

func main() {
	answer := 0
	for i := 1; i < 577; i++ {
		x := (i + 1) * (i + 1) * (i + 1) - i * i * i
		if big.NewInt(int64(x)).ProbablyPrime(20) {
			answer++
		}
	}
	fmt.Printf("%v\n", answer)
}

