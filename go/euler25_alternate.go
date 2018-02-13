//
// projecteuler.net
//
// problem 25
//

package main

import (
	"fmt"
	"math"
)

func main() {
	log_phi := math.Log(Math.Phi)
	x := math.Log(10) * 999
	y := math.Log(5) / 2
	n := math.Ceil((x + y) / log_phi)
	fmt.Printf("%v\n", n)
}
