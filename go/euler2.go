//
// projecteuler.net
//
// problem 2
//

package main

import (
	"fmt"
)

func fib() func() int {
	a, b := 0, 1
	return func() int {
		a, b = b, a+b
		return a
	}
}

func main() {
	f := fib()
	sum := 0

	for {

		x := f()
		if x >= 4000000 {
			break
		}
		if x%2 == 0 {
			sum += x
		}

	}
	fmt.Println(sum)
}
