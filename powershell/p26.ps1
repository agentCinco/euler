#ProjectEuler.net
#Problem 26
#
#Find the value of d  1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.

$arr = @()

foreach ($i in 2..1000) {
    [double]$arr += 1 / $i
}

$arr | sort length