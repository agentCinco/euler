package main

import (
	"fmt"
	"math"
)

func generate_nprimes(N int) []int {
	var x, y, n int
	nsqrt := math.Sqrt(float64(N))

	is_prime := make([]bool, N)

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
	//n := 100
	n := 50000000
	answer := 2
	primes := generate_nprimes(n)

	for i := 1; i < len(primes); i++ {
		if primes[i] < n/4 {
			answer++
		}

		if primes[i] < n/16 {
			answer++
		}

		if (primes[i]-3)%4 == 0 {
			answer++
		}
	}
	fmt.Printf("%v\n", answer)
}
