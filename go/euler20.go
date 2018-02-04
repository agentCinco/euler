//
// projecteuler.net
//
// problem 19
//

package main

import (
	"fmt"
	"math/big"
	"strconv"
)

func factorial(n int64) *big.Int {
	f := big.NewInt(0)
	f.MulRange(1, n)
	return f
}

func main() {
	n := factorial(100)
	x := n.String()
	answer := big.NewInt(0)

	for i := 0; i < len(x); i++ {
		y, _ := strconv.ParseInt(string(x[i]), 10, 0)
		z := big.NewInt(y)
		answer = answer.Add(answer, z)
	}
	fmt.Printf("%v\n", answer)
}
