// Caskade Programming Language Adapter for Go
// Created on May 18, 2025
// By Chris Kelsey of Blue Vision Studios

package caskade

const True = 1
const False = 0

func NOT(x int) int {
    if x == True {
        return False
    }
    return True
}

func AND(a, b int) int {
    if a == True && b == True {
        return True
    }
    return False
}

func OR(a, b int) int {
    if a == True || b == True {
        return True
    }
    return False
}

func EQ(a, b int) int {
    if a == b {
        return True
    }
    return False
}

func NEQ(a, b int) int {
    if a != b {
        return True
    }
    return False
}

func TO_BOOL(x int) int {
    if x == 0 {
        return False
    }
    return True
}
