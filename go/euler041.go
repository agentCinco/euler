//
// projecteuler.net
//
// problem 41
//

package main

import (
	"fmt"
	"math/big"
	"strconv"
	"strings"
	"sort"
)

func pandigital(n int) bool {
	w := strconv.Itoa(n)
	s := strings.Split(w, "")
	sort.Strings(s)
	if strings.Join(s, "") == "1234567" {
		return true
	}
	return false
}

func main() {
	answer := 0
	for i := 7654321; i > 1234567; i-=2 {
		if big.NewInt(int64(i)).ProbablyPrime(1) {
			if pandigital(i) {
				answer = i
				break
			}
		}
	}
	fmt.Printf("%v\n", answer)
}
