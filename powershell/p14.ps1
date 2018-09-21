<#
ProjectEuler.net
problem 14

The following iterative sequence is defined for the set of positive integers:

n > n/2 (n is even)
n > 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13  40  20  10  5  16  8  4  2  1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.

524
837799
#>

$num = 13
$result = 1
$high = 0
$highnum = 0

for ($i = 77031; $i -le 999999; $i++) {
    $num = $i
  
    do {
        if ($num % 2 -eq 0) {$num = $num / 2; $result++}
        else {$num = (($num * 3) + 1); $result++}
        #$num
    }
    until($num -eq 1)
  
    if ($result -gt $high) {$high = $result; $highnum = $i}
    $result = 0
}

$high
$highnum