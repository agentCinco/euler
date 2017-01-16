fn is_palindrome(string: &str) -> bool {
    string.chars().zip(string.chars().rev()).all(|(x, y)| x == y)
}

fn main() {
    let mut max = 0;
    for i in 900..999 {
        for j in 900..999 {
            let x = i * j;
            let s: String = x.to_string();
            let ss = &s[..];
            if is_palindrome(ss) {
                if x > max {
                    max = x;
                };
            };
        };
    };

    println!("{}", max);
}