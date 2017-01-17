use std::process;

fn main() {
    for a in 1i64..499 {
        for b in 1i64..499 {
            for c in 1i64..499 {
                if (a + b + c) == 1000 {
                    if (a.pow(2) + b.pow(2)) == c.pow(2) {
                        let x = a * b * c;
                        println!("{}", x);
                        process::exit(0);
                    };
                };
            }
        }
    }
}
