//
// projecteuler.net
//
// problem 34
//

package main

import (
	"fmt"
)

func fact(n int) (r int) {
	if n > 0 {
		r = n * fact(n-1)
		return r
	}
	return 1
}

func main() {
	f := [10]int{}
	answer := 0
	for i := 0; i < 10; i++ {
		f[i] = fact(i)
	}
	for i := 10; i < 2540161; i++ {
		sum := 0
		n := i
		for n > 0 {
			d := n % 10
			n /= 10
			sum += f[d]
		}

		if sum == i {
			answer += i
		}
	}
	fmt.Printf("%v\n", answer)
}
