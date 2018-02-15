//
// projecteuler.net
//
// problem 44
//

package main

import (
	"fmt"
	"math"
)

func isPent(n float64) bool {
	p := (math.Sqrt(1+24*n) + 1.0) / 6.0
	t := math.Trunc(p)
	fmt.Println(p,t,n)
	return p == t
}

func main() {
	//answer := 0.0
	i := 1533776805.0
	x := i * (2*i - 1)
	isPent(x)
//	for i := 40757.0; ; i+=2 {
//		x := i * (2*i - 1)
//		if isPent(x) {
//			answer = x
//			break
//		}
//	}
	//fmt.Printf("%v\n", answer)
}
