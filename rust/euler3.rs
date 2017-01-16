fn main() {
    let mut n = 600851475143i64;
    let mut i = 2;

    while i * i < n {
        while n % i == 0 {
            n = n / i;
        };
        i += 1;
    }

    println!("{}", n)
}