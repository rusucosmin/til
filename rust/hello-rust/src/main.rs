use ferris_says::say;
use std::io::{stdout, BufWriter};

fn main() {
    let stdout = stdout();
    let message = String::from("Hello fellow Rustaceans!");
    let width = message.chars().count();

    let mut writer = BufWriter::new(stdout.lock());
    say(message.as_bytes(), width, &mut writer).unwrap();

    // https://doc.rust-lang.org/rust-by-example/hello.html
    println!("hello world");

    let x = 5 + 90 + 5;
    println!("Is `x` 10 or 100? x = {}", x);
}