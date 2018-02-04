//
// projecteuler.net
//
// problem 12
//

package main

import (
	"fmt"
	"math/big"
)

func generate_nprimes(n int) []int {
	p := []int{}
	for i := 1; i < n; i++ {
		if big.NewInt(int64(i)).ProbablyPrime(10) {
			p = append(p, i)
		}
	}
	return p
}

func main() {
	primes := generate_nprimes(1000)
	answer := 0
	n1 := 0
	Dn := 2
	Dn1 := 0
	exp := 0
	i := 0
	n := 199

	for i < 5 {
		n += 1
		n1 = n

		if n1%2 == 0 {
			n1 = n1 / 2
		}

		Dn1 = 1
		for j := 0; j <= 1000; j++ {
			if primes[j]*primes[j] > n1 {
				Dn1 = Dn1 * 2
				break
			}

			exp = 1
			for n1%primes[j] == 0 {
				exp = exp + 1
				n1 = n1 / primes[j]
			}
			if exp > 1 {
				Dn1 = Dn1 * exp
			}
			if n1 == 1 {
				break
			}
			i = Dn * Dn1
			Dn = Dn1
		}

	}

	answer = n * (n - 1) / 2
	fmt.Printf("%v\n", answer)
}
