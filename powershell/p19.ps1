$result = 0
$b = get-date # PowerShell won't just take "sunday" to compare(I don't know how), so I used today's date
for ($year = 1901; $year -le 2000; $year++) {
    for ($month = 1; $month -le 12; $month++) {
        $a = get-date -day 1 -month $m -year $i
        if ($a.dayofweek.compareto($b.dayofweek) -eq 0) {$result++}
    }
} $result