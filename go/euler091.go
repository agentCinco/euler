//
// projecteuler.net
//
// problem 91
//

package main

import (
	"fmt"
	"math"
)

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func main() {
	x := 50
	answer := x * x * 3
	for i := 1; i <= x; i++ {
		for j := 1; j <= x; j++ {
			y := gcd(i, j)
			a := float64(j * y / i)
			b := float64((x - i) * y / j)
			answer += int(math.Min(a, b)) * 2
		}
	}
	fmt.Printf("%v\n", answer)
}
