$a = 1
$b = 1
$c = 0
$i = 0
$sum = 0

do {
    $c = $a + $b
    $a = $b
    $b = $c

    if ($a % 2 -eq 0) {$sum += $a}

}
while ($c -le 4000000)
$a
$sum
