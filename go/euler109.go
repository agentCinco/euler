//
// projecteuler.net
//
// problem 109
//

package main

import (
	"fmt"
)

func main() {
	l := 100
	answer := 0
	s := []int{}
	d := []int{}

	for i := 1; i <= 20; i++ {
		s = append(s, i)
		s = append(s, 2*i)
		s = append(s, 3*i)
		d = append(d, 2*i)
	}
	s = append(s, 25)
	s = append(s, 50)
	d = append(d, 25*2)

	for _, v := range d {
		if v < l {
			answer++
		}
	}

	for i := 0; i < len(s); i++ {
		for _, v := range d {
			if s[i]+v < l {
				answer++
			}
		}
	}

	for i := 0; i < len(s); i++ {
		for j := i; j < len(s); j++ {
			for _, v := range d {
				if s[i]+s[j]+v < l {
					answer++
				}
			}
		}
	}
	fmt.Printf("%v\n", answer)
}
