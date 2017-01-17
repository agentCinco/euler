fn main() {
    let j: i64 = 101;
    let mut a: i64  = 0;
    let mut x: i64 = 0;

    for i in 1..j {
        a += i.pow(2);
        x += i;
    };

    let y: i64 = x.pow(2);
    let z: i64 = y - a;

    println!("{}", z); 
}