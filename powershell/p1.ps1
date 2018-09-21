$a = 1..999
$sum = 0

foreach ($i in $a) {

    if ($i % 3 -eq 0 -or $i % 5 -eq 0) {$sum += $i}


}

$sum
