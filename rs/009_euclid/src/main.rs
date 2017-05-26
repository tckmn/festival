use std::io;

fn main() {
    let mut line = String::new();
    io::stdin().read_line(&mut line).unwrap();
    let mut nums = line.split_whitespace();
    let (mut a, mut b): (i32, i32) = (nums.next().unwrap().parse().unwrap(),
                                      nums.next().unwrap().parse().unwrap());

    while b != 0 {
        let m = a % b;
        println!("{} = {}*{} + {}", a, b, a / b, m);
        a = b;
        b = m;
    }
}
