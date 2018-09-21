$a = Get-Content ./words.txt
$a = $a.replace('"', "")
$a = $a.split(",")
$b = @(1)
$total = 0

$abc123 = @{"a" = 1;
    "b"         = 2;
    "c"         = 3;
    "d"         = 4;
    "e"         = 5;
    "f"         = 6;
    "g"         = 7;
    "h"         = 8;
    "i"         = 9;
    "j"         = 10;
    "k"         = 11;
    "l"         = 12;
    "m"         = 13;
    "n"         = 14;
    "o"         = 15;
    "p"         = 16;
    "q"         = 17;
    "r"         = 18;
    "s"         = 19;
    "t"         = 20;
    "u"         = 21;
    "v"         = 22;
    "w"         = 23;
    "x"         = 24;
    "y"         = 25;
    "z"         = 26;
}

function tri {
    param ($n)
    $n = ($n * ($n - 1)) / 2
    return $n;
}

for ($i = 3; $i -lt 100; $i++) {
    $b += tri($i)
}

foreach ($i in $a) {

    $temp = 0

    for ($j = 0; $j -le $i.length - 1; $j++) {
        $z = $i[$j]
        $temp += $abc123["$z"]
        
        $z = ""
    }


    if ($b -contains $temp) {$total++, $i}
}

$total