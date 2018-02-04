//
// projecteuler.net
//
// problem 31
//

package main

import (
	"fmt"
	"math/big"
)

func factorial(n int64) *big.Int {
	f := big.NewInt(0)
	f.MulRange(1, n)
	return f
}

func big_mul(x, y *big.Int) *big.Int {
	return big.NewInt(0).Mul(x, y)
}

func big_div(x, y *big.Int) *big.Int {
	return big.NewInt(0).Div(x, y)
}

func main() {
	x := factorial(20)
	x = big_mul(x, x)
	y := factorial(40)
	answer := big_div(y, x)
	fmt.Printf("%v\n", answer)
}
