// Caskade Programming Language Adapter for C++
// Created on May 18, 2025
// By Chris Kelsey of Blue Vision Studios

#ifndef CASKADE_ADAPTER_HPP
#define CASKADE_ADAPTER_HPP

namespace caskade {

// Caskade 'true' = 1, 'false' = 0
constexpr int True = 1;
constexpr int False = 0;

// Logical NOT
constexpr int NOT(int x) {
    return (x == True) ? False : True;
}

// Logical AND
constexpr int AND(int a, int b) {
    return (a == True && b == True) ? True : False;
}

// Logical OR
constexpr int OR(int a, int b) {
    return (a == True || b == True) ? True : False;
}

// Equality
constexpr int EQ(int a, int b) {
    return (a == b) ? True : False;
}

// Inequality
constexpr int NEQ(int a, int b) {
    return (a != b) ? True : False;
}

// Convert any value to Caskade boolean
constexpr int TO_BOOL(int x) {
    return (x == 0) ? False : True;
}

} // namespace caskade

#endif // CASKADE_ADAPTER_HPP
