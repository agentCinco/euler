<#
Projecteuler.net
problem 3

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
#>

$factor = @()
$prime = @()
$notprime = @()
$num = 600851475143
[int]$sqrt = [math]::sqrt($num)

for ([int]$i = 2; $i -lt $sqrt; $i++) {

    if ($num % $i -eq 0) {
        $factor += $i
    }

}

foreach ($i in $factor) {
    for ($x = 2; $x -lt $i / 2; $x++) {
        if ($i % $x -eq 0) {$notprime += $i}
    }
}

for ($i = 0; $i -le $factor.Length; $i++) {
    if ($notprime -contains $factor[$i]) {}
    else {$prime += $factor[$i]}
}

write-host "The winner is:"
$prime[-1]
