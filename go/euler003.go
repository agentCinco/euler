//
// projecteuler.net
//
// problem 3
//
// The prime factors of 13195 are 5, 7, 13 and 29.
//
// What is the largest prime factor of the number 600851475143 ?
//

package main

import (
	"fmt"
)

func main() {
	n := 600851475143
	for i := 2; i*i < n; i++ {
		for n%i == 0 {
			n = n / i
		}

	}
	fmt.Println(n)
}
