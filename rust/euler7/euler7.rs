extern crate primal;

fn main() {
    let p = primal::StreamingSieve::nth_prime(10001);
    println!("{}", p);
}