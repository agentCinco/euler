//
// projecteuler.net
//
// problem 25
//

package main

import (
	"fmt"
	"math/big"
	"os"
)

func fib(n int) *big.Int {
	a := big.NewInt(0)
	b := big.NewInt(1)

	for i := 0; i <= n; i++ {
		a.Add(a, b)
		a, b = b, a
	}
	return a
}

func main() {
	answer := 0
	for i := 0; ; i++ {
		answer = i
		x := fib(i)
		if len(x.String()) == 1000 {
			fmt.Printf("%v\n", answer)
			os.Exit(0)
		}
	}
}
