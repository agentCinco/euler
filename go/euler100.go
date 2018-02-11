//
// projecteuler.net
//
// problem 100
//

package main

import "fmt"

func main() {
	b0 := uint64(15)
	n0 := uint64(21)
	t := uint64(1000000000000)

	for n0 < t {
		b1 := uint64(3*b0 + 2*n0 - 2)
		n1 := uint64(4*b0 + 3*n0 - 3)

		b0 = b1
		n0 = n1
	}
	answer := b0
	fmt.Printf("%v\n", answer)
}
