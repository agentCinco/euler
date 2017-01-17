extern crate primal;

fn main() {
    // the primes we want to find
    let ns = (1..100 + 1).map(|x| x * 20_000).collect::<Vec<_>>();

    // find our upper bound
    let (_lo, hi) = primal::estimate_nth_prime(1_999_999);

    // find the primes up to this upper bound
    let sieve = primal::Sieve::new(hi as usize);

    // now we can efficiently sum them up
    let sum = ns.iter()
        .map(|n| sieve.nth_prime(*n))
        .fold(0, |a, b| a + b);
    println!("the sum is {}", sum);
}
