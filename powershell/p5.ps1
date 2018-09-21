<#
Projecteuler.net
Problem 5

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#>

for ($i = 2520; ; $i += 2520) {
    for ($x = 11; $x -le 20; $x++) {
        if ($i % $x -eq 0) {
            if ($x -eq 20) {Write-Host "$i is winner"; return}
        }
        else {break}
    }
}