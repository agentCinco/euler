//
// projecteuler.net
//
// problem 14
//

package main

import (
	"fmt"
)

var hi = 0
var n = 0
var r = 1
var h = 0

func main() {
	for i := 1; i < 999999; i++ {
		n = i
		for n > 2 {
			if n%2 == 0 {
				n = n / 2
				r += 1
			} else {
				n = n*3 + 1
				r += 1
			}
			if r > h {
				h = r
				hi = i
			}
		}
		r = 0
	}
	fmt.Printf("%v\n", hi)
}
