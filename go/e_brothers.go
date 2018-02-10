package main

import (
    "fmt"
    "math"
)

func fact(n float64) (r float64) {
    if n > 0 {
        r = n * fact(n-1)
        return r
    }
    return 1
}

func main() {
    e := 0.0
    for i := 0.0; i < 9; i++ {
        e += (2*i + 2) / fact((2*i)+1)
    }
    fmt.Printf("E = %v\n", math.E)
    fmt.Printf("e = %.15f\n", e)
}
