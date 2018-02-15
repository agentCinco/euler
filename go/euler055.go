//
// projecteuler.net
//
// problem 55
//

package main

import (
	"fmt"
	"math/big"
)

func is_lychrel(n, limit int64) bool {
	x := big.NewInt(n)
	if int64(len(x.String())) >= limit {
		return false
	} else {
		for len(x.String()) <= 28 {
			x = x.Add(x, reverse_big_int(x))
			if is_palindrome(x) {
				return false
			}
		}
		return true
	}
}

func is_palindrome(n *big.Int) bool {
	s := n.String()
	r := reverse_str(s)

	if s == r {
		return true
	} else {
		return false
	}
}

func reverse_str(s string) string {
	r := []rune(s)
	for i, j := 0, len(r)-1; i < len(r)/2; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	return string(r)
}

func reverse_big_int(n *big.Int) *big.Int {
	s := n.String()
	r := reverse_str(s)
	x := new(big.Int)
	z, _ := x.SetString(r, 10)
	return z
}

func main() {
	answer := 0
	for i := 1; i < 10000; i++ {
		if is_lychrel(int64(i), 28) {
			answer++
		}
	}
	fmt.Printf("%v\n", answer)
}
