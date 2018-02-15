//
// projecteuler.net
//
// problem 12
//

package main

import (
	"fmt"
	"math"
)

func generate_nprimes(num int) []int {
	var x, y, n int
	const N := num
	nsqrt := math.Sqrt(N)

	is_prime := [N]bool{}

	for x = 1; float64(x) <= nsqrt; x++ {
		for y = 1; float64(y) <= nsqrt; y++ {
			n = 4*(x*x) + y*y
			if n <= N && (n%12 == 1 || n%12 == 5) {
				is_prime[n] = !is_prime[n]
			}
			n = 3*(x*x) + y*y
			if n <= N && n%12 == 7 {
				is_prime[n] = !is_prime[n]
			}
			n = 3*(x*x) - y*y
			if x > y && n <= N && n%12 == 11 {
				is_prime[n] = !is_prime[n]
			}
		}
	}

	for n = 5; float64(n) <= nsqrt; n++ {
		if is_prime[n] {
			for y = n * n; y < N; y += n * n {
				is_prime[y] = false
			}
		}
	}

	is_prime[2] = true
	is_prime[3] = true

	primes := make([]int, 0, 1270606)
	for x = 0; x < len(is_prime)-1; x++ {
		if is_prime[x] {
			primes = append(primes, x)
		}
	}

	return primes
}

func main() {
	primes := generate_nprimes()
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
