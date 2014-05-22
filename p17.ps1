#  ProjectEuler.net
#  Problem 17
#  If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
#  If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#
#  one          3 36 190
#  two          3
#  three        5
#  four         4
#  five         4
#  six          3
#  seven        5
#  eight        5
#  nine         4 -
#  ten          3 70 10
#  eleven       6
#  twelve       6
#  thirteen     8
#  fourteen     8
#  fifteen      7
#  sixteen      7
#  seventeen    9
#  eighteen     8
#  nineteen     8
#  twenty       6 100 * 46 4140
#  thirty       6
#  forty        5
#  fifty        5
#  sixty        5
#  seventy      7
#  eighty       6
#  ninety       6
#                   17280
#  hundred      7 * 100   900
#  and          3 * 99    297
#  onethousand 11 * 1 = 11

$ones = 36
$teens = 70
$twentytoninety = 46
$hundred = 7
$and = 3
$thousand = 11

$sum = ($ones * 190) + ($teens * 10) + ($twentytoninety * 100) + ($hundred * 900) + ($and * 891) + ($thousand)

$sum