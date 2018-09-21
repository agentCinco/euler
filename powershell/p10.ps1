#
# generate a list of primes up to a specific target using a sieve of eratosthenes
#

Measure-Command {

    $a = Get-Prime(2000000)
    $x = 0

    foreach ($i in $a) {
        $x += $i 
    }

    $x

    function Get-Prime {
        #sieve of eratosthenes, http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
        param ($target, $count = 0)
        $sieveBound = [math]::ceiling(( $target - 1 ) / 2) #not storing evens so count is lower than $target
        $sieve = @($false) * $sieveBound
        $crossLimit = [math]::ceiling(( [math]::sqrt($target) - 1 ) / 2)
        for ($i = 1; $i -le $crossLimit; $i ++) {
            if ($sieve[$i] -eq $false) {
                $prime = 2 * $i + 1
                write-debug "Found: $prime"
                for ($x = 2 * $i * ( $i + 1 ); $x -lt $sieveBound; $x += 2 * $i + 1) {
                    $sieve[$x] = $true
                }
            }
        }
        $primes = @(2)
        for ($i = 1; $i -le $sieveBound; $i ++) {
            if ($count -gt 0 -and $primes.length -ge $count) {
                break;
            }
            if ($sieve[$i] -eq $false) {
                $prime = 2 * $i + 1
                write-debug "Output: $prime"
                $primes += $prime
            }
        }
        return $primes
    }

}#end Measure-Command
