<#
Projecteuler.net
Problem 30

Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

1634 = 1^4 + 6^4 + 3^4 + 4^4
8208 = 8^4 + 2^4 + 0^4 + 8^4
9474 = 9^4 + 4^4 + 7^4 + 4^4
As 1 = 1^4 is not a sum it is not included.

The sum of these numbers is 1634 + 8208 + 9474 = 19316.

Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

#>

$a = 360000
$b = @()
$r = 0
$p = 0

function powers {
    param($arg)

    $arg = $arg.toString()
    $x = 0
    for ($i = 0; $i -le $arg.length - 1; $i++) {
        $x += [math]::pow(($arg[$i] - 48), 5)
    }
    
    if ($arg -eq $x) {
        return $arg
    }
    else {return $null}
}

System.

for ($i = 255000; $i -le $a; $i++) {
    $i
    $b += powers $i
}

foreach ($z in $b) {

    $r += $z

}

$b
$r