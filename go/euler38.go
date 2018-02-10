//
// projecteuler.net
//
// problem 38
//

package main

import (
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func pandigital(n int) bool {
	w := strconv.Itoa(n)
	s := strings.Split(w, "")
	sort.Strings(s)
	if strings.Join(s, "") == "123456789" {
		return true
	}
	return false
}

func concat(a, b int) int {
	c := b
	for c > 0 {
		a *= 10
		c /= 10
	}
	return a + b
}

func main() {
	answer := 0
	for i := 9387; i > 9234; i-- {
		answer = concat(i, (2 * i))
		if pandigital(answer) {
			fmt.Printf("%v\n", answer)
			os.Exit(0)
		}
	}
}
