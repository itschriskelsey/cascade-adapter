// Caskade Programming Language Adapter for Rust
// Created on May 18, 2025
// By Chris Kelsey of Blue Vision Studios

const TRUE: i32 = 1;
const FALSE: i32 = 0;

fn NOT(x: i32) -> i32 {
    if x == TRUE { FALSE } else { TRUE }
}

fn AND(a: i32, b: i32) -> i32 {
    if a == TRUE && b == TRUE { TRUE } else { FALSE }
}

fn OR(a: i32, b: i32) -> i32 {
    if a == TRUE || b == TRUE { TRUE } else { FALSE }
}

fn EQ(a: i32, b: i32) -> i32 {
    if a == b { TRUE } else { FALSE }
}

fn NEQ(a: i32, b: i32) -> i32 {
    if a != b { TRUE } else { FALSE }
}

fn TO_BOOL(x: i32) -> i32 {
    if x == 0 { FALSE } else { TRUE }
}
