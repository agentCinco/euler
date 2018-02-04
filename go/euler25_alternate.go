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
	log_phi := math.Log(1.618033988749894848204586834365638117720309179805762862135)
	x := math.Log(10) * 999
	y := math.Log(5) / 2
	n := math.Ceil((x + y) / log_phi)
	fmt.Printf("%v\n", n)
}
