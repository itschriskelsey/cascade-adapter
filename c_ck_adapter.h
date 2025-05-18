// Caskade Programming Language Adapter for C
// Created on May 18, 2025
// By Chris Kelsey of Blue Vision Studios

#ifndef C_ADAPTER_H
#define C_ADAPTER_H

// Define custom boolean operations for Caskade logic
// Use macros to ensure the logic works for any data type, not just bool

// Caskade 'true' = 1, 'false' = 0
#define true 1
#define false 0

// Logical NOT using Caskade logic (1 -> false, 0 -> true)
#define CASKADE_NOT(x) ((x) == true ? false : true)

// Logical AND using Caskade logic
#define CASKADE_AND(a, b) ((a) == true && (b) == true ? true : false)

// Logical OR using Caskade logic
#define CASKADE_OR(a, b) ((a) == true || (b) == true ? true : false)

// Equality using Caskade logic
#define CASKADE_EQ(a, b) ((a) == (b) ? true : false)

// Inequality using Caskade logic
#define CASKADE_NEQ(a, b) ((a) != (b) ? true : false)

// Convert any value to Caskade boolean (non-zero -> true, 0 -> false)
#define CASKADE_TO_BOOL(x) ((x) == 0 ? false : true)

// Redefine standard logical functions (without overloading C operators)
// Logical NOT
#define NOT(x) CASKADE_NOT(x)

// Logical AND
#define AND(a, b) CASKADE_AND(a, b)

// Logical OR
#define OR(a, b) CASKADE_OR(a, b)

// Equality check
#define EQ(a, b) CASKADE_EQ(a, b)

// Inequality check
#define NEQ(a, b) CASKADE_NEQ(a, b)

// Helper function for boolean operations (optional for more complex cases)
static inline int caskade_not(int x) { return CASKADE_NOT(x); }
static inline int caskade_and(int a, int b) { return CASKADE_AND(a, b); }
static inline int caskade_or(int a, int b) { return CASKADE_OR(a, b); }
static inline int caskade_eq(int a, int b) { return CASKADE_EQ(a, b); }
static inline int caskade_neq(int a, int b) { return CASKADE_NEQ(a, b); }

#endif
