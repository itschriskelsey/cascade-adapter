// Caskade Programming Language Adapter for Swift
// Created on May 18, 2025
// By Chris Kelsey of Blue Vision Studios

let TRUE = 1
let FALSE = 0

func caskadeNot(_ x: Int) -> Int {
    return x == TRUE ? FALSE : TRUE
}

func caskadeAnd(_ a: Int, _ b: Int) -> Int {
    return (a == TRUE && b == TRUE) ? TRUE : FALSE
}

func caskadeOr(_ a: Int, _ b: Int) -> Int {
    return (a == TRUE || b == TRUE) ? TRUE : FALSE
}

func caskadeEq(_ a: Int, _ b: Int) -> Int {
    return (a == b) ? TRUE : FALSE
}

func caskadeNeq(_ a: Int, _ b: Int) -> Int {
    return (a != b) ? TRUE : FALSE
}

func caskadeToBool(_ x: Int) -> Int {
    return (x == 0) ? FALSE : TRUE
}
