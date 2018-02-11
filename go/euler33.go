//
// projecteuler.net
//
// problem 32
//

package main

import (
	"fmt"
)

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func main() {
	dp := 1
	np := 1
	for i := 1; i < 10; i++ {
		for d := 1; d < i; d++ {
			for n := 1; n < d; n++ {
				if (n*10+i)*d == n*(i*10+d) {
					dp = d * dp
					np = n * np
				}
			}
		}
	}
	dp /= gcd(dp, np)
	answer := dp
	fmt.Printf("%v\n", answer)
}
