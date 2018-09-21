<#
Projecteuler.net
Problem 9

A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

a2 + b2 = c2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
#>

for ($c = 425; $c -le 1000; $c++) {

    for ($b = 375; $b -le 500; $b++) {
  
        for ($a = 200; $a -le 400; $a++) {
            if ($a -lt $b -and $b -lt $c) {
                if (($a + $b + $c) -eq 1000) {
                    write-host "$a $b $c"
                    $as = ($a * $a)
                    $bs = ($b * $b)
                    $cs = ($c * $c)
                    if (($as + $bs -eq $cs)) {
                        write-host "Found it! $a $b $c"
                        return
                    }
                }
            }
        }
    }
}
