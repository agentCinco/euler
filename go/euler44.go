//
// projecteuler.net
//
// problem 44
//

package main

import (
	"fmt"
	"math"
	"os"
)

func isPent(n float64) bool {
	p := (math.Sqrt(1+24*n) + 1.0) / 6.0
	t := math.Trunc(p)
	return p == t
}

func main() {
	answer := 0

	for i := 1;; i++ {
		n := i * (3*i - 1) / 2
		for j := i - 1; j > 0; j-- {
			m := j * (3*j - 1) / 2
			a := float64(n - m)
			b := float64(n + m)
			if isPent(a) && isPent(b) {
				answer = int(a)
				fmt.Printf("%v\n", answer)
				os.Exit(0)
			}
		}
	}
}
