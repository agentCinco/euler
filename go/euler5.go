//
// projecteuler.net
//
// problem 5
//

package main

import (
	"fmt"
)

func main() {

	limit := 20
	p := [8]int{2, 3, 5, 7, 11, 13, 17, 19}
	y := []int{}
	z := 0

	for _, v := range p {
		y = append(y, v)
		z = v * v
		if z < limit {
			for z < limit {
				z = z * v
				y = append(y, v)
			}
		}
	}
	answer := y[0]
	for _, v := range y[1:] {
		answer *= v
	}
	fmt.Printf("%v\n", answer)
}
