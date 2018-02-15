//
// projecteuler.net
//
// problem 18
//

package main

import (
	"fmt"
	"io/ioutil"
	"strconv"
	"strings"
	"math"
)

func readNums(f string) (nums2d [][]uint8, err error) {
	file, err := ioutil.ReadFile(f)
	if err != nil {
		return nil, err
	}

	lines := strings.Split(string(file), "\n")
	nums := [][]uint8{}

	for _, line := range lines {
		num := []uint8{}
		if len(line) == 0 {
			continue
		}

		slice := strings.Split(string(line), ",")
		for _, n := range slice {
			i, _ := strconv.Atoi(n)
			num = append(num, uint8(i))
		}
		nums = append(nums, num)
	}
	return nums, nil
}

func main() {
	nums, err := readNums("../text/triangle.txt")
	if err != nil {
		panic(err)
	}
	lines := len(nums)
	for i := lines - 1; i >= 0; i-- {
		for j := 0 ; j <= i; j++ {
			nums[i, j] += math.Max(nums[i+1,j], nums[i+1, j+1])
		}
	}
}
