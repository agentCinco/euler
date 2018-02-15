package main

import (
	"fmt"
	"math"
)

func main() {
	n := float64(100000000)
	x := float64(1 + (1 / n))
	e := math.Pow(x, n)
	fmt.Printf("E = %v\n", math.E)
	fmt.Printf("𝒆 = %.15f\n", e)
}
