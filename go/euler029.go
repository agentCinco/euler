//
// projecteuler.net
//
// problem 29
//

package main

import (
	"fmt"
	"math/big"
)

func unique(Slice []string) []string {
	keys := make(map[string]bool)
	list := []string{}
	for _, entry := range Slice {
		if _, value := keys[entry]; !value {
			keys[entry] = true
			list = append(list, entry)
		}
	}
	return list
}

func main() {
	a := make([]string, 0)

	for i := int64(2); i < 101; i++ {
		for j := int64(2); j < 101; j++ {
			x := big.NewInt(i)
			y := big.NewInt(j)
			z := big.NewInt(0)
			z = z.Exp(x, y, z)
			a = append(a, z.String())
		}
	}
	a = unique(a)
	fmt.Printf("%v\n", len(a))
}
