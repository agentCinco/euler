<#
ProjectEuler.net
Problem 7

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10001st prime number?
#>

$prime = 2, 3
$n = 5
do {
    for ($i = 3; $i -le [math]::sqrt($n) + 1; $i++) {
        if ($n % $i -eq 0) {break}
        $n
        #else{$prime+=$n;$n}
        #if($n%$i -eq 0){break}
    }
    $n++
}

while ($prime.Length -lt 10)
