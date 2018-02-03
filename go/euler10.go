//
// projecteuler.net
//
// problem 10
//

package main

import (
	"fmt"
	"math/big"
)

func main() {
	answer := 0
	for i := 1; i < 1999999; i++ {
		if big.NewInt(int64(i)).ProbablyPrime(10) {
			answer += i
		}
	}
	fmt.Printf("%v\n", answer)
}
