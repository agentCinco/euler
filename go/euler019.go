//
// projecteuler.net
//
// problem 19
//

package main

import (
	"fmt"
	"time"
)

func main() {
	answer := 0
	for i := 1901; i < 2001; i++ {
		for j := 1; j < 13; j++ {
			k := time.Date(i, time.Month(j), 1, 0, 0, 0, 0, time.UTC)
			if k.Weekday() == time.Weekday(0) {
				answer += 1
			}
		}
	}

	fmt.Printf("%v\n", answer)
}
