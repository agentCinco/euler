<#
Projecteuler.net
Problem 31

In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:

1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
It is possible to make £2 in the following way:

1£1 + 150p + 220p + 15p + 12p + 31p
How many different ways can £2 be made using any number of coins?
#>

$1p
$2p
$5p
$10p
$20p
$50p
$100p

for () { #100p
    for () { #50p
        for () { #20p
            for () { #10p
                for () { #5p
                    for () { #2p
                        for () { #1p
                        
                        }
                    }
                }
            }
        }
    }
}