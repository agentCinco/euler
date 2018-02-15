//
// projecteuler.net
//
// problem 36
//

package main

import (
	"fmt"
	"strconv"
)

func reverse_str(s string) string {
	r := []rune(s)
	for i, j := 0, len(r)-1; i < len(r)/2; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	return string(r)
}

func is_palindrome(n int64, b int) bool {
	s := strconv.FormatInt(n, b)
	r := reverse_str(s)

	if s == r {
		return true
	} else {
		return false
	}
}

func main() {
	nums := []int64{}
	for i := int64(1); i < 1000000; i++ {
		if is_palindrome(i, 10) {
			if is_palindrome(i, 2) {
				nums = append(nums, i)
			}
		}
	}
	answer := int64(0)
	for _, num := range nums {
		answer += num
	}
	fmt.Printf("%v\n", answer)
}
