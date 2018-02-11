// int pMax = 0, tMax = 0;
// int m = 0, k = 0;

// for (int s = 1; s <= 1000; s++) {
//     int t = 0;
//     int mlimit = (int)Math.Sqrt(s / 2);
//     for (m = 2; m <= mlimit; m++) {
//         if ((s / 2) % m == 0) { // m found
//             if (m % 2 == 0) { // ensure that we find an odd number for k
//                 k = m + 1;
//             } else {
//                 k = m + 2;
//             }
//             while (k < 2 * m && k <= s / (2 * m)) { if (s / (2 * m) % k == 0 && gcd(k, m) == 1) { t++; } k += 2; } } } if (t > tMax) {
//         tMax = t;
//         pMax = s;
//     }
// }
package main

import (
	"fmt"
	"math"
)

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func main() {
	var m, k, pMax, tMax int
	for s := 1; s <= 1000; s++ {
		t := 0
		mlimit := int(math.Sqrt(float64(s / 2)))
		for m := 2; m <= mlimit; m++ {
			if (s/2)%m == 0 { 
				if m%2 == 0 { 
					k = m + 1
				} else {
					k = m + 2
				}
				for k < 2*m && k <= s/(2*m) {
					if s/(2*m)%k == 0 && gcd(k, m) == 1 {
						t++
					}
					k += 2
				}
			}
		}
		if t > tMax {
			tMax = t
			pMax = s
		}
	}
	fmt.Printf("%v\n", pMax)
}
