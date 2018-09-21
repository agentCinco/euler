<#
projecteuler.net
project 4

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.

Find the largest palindrome made from the product of two 3-digit numbers.
#>

$a = 900..999
$b = @()
$c = @()

function intToArray($arg) {

    $arg = $arg.toString()
    $arg = $arg.toCharArray()

    if ($arg[2] -eq $arg[3] -and $arg[1] -eq $arg[4] -and $arg[0] -eq $arg[5]) {return $arg}
    else {return $null}

}

foreach ($i in $a) {

    foreach ($z in $a) {$b += $i * $z; $i; $z}

}

foreach ($i in $b) {

    if (intToArray($i) ! $null ) {$c += $i}

}

$c
