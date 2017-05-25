use std::io;

fn main() {
    let mut expr = String::new();
    io::stdin().read_line(&mut expr).unwrap();

    let mut stack = Vec::new();
    for ch in expr.chars() {
        match ch {
            '0'...'9' => stack.push(ch as i32 - '0' as i32),
            '+' => {
                let top = stack.pop().unwrap();
                *stack.last_mut().unwrap() += top;
            },
            '-' => {
                let top = stack.pop().unwrap();
                *stack.last_mut().unwrap() -= top;
            },
            '*' => {
                let top = stack.pop().unwrap();
                *stack.last_mut().unwrap() *= top;
            },
            '/' => {
                let top = stack.pop().unwrap();
                *stack.last_mut().unwrap() /= top;
            },
            '\n' => println!("{}", stack.pop().unwrap()),
            _ => panic!("unexpected input")
        }
    }
}
