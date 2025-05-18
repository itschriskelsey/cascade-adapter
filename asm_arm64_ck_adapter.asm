// Caskade Programming Language Adapter for ARM64 Assembly
// Created on May 18, 2025
// By Chris Kelsey of Blue Vision Studios


not_caskade:
    cmp w0, #1           // compare w0 to TRUE (1)
    beq return_false
    mov w0, #1           // input was FALSE (0), return TRUE (1)
    ret
return_false:
    mov w0, #0           // input was TRUE (1), return FALSE (0)
    ret

// ARM64 Logical AND:
// Inputs: w0 and w1 (0 or 1)
// Output: w0 (1 if both TRUE, else 0)
and_caskade:
    cmp w0, #1
    bne return_false_and
    cmp w1, #1
    bne return_false_and
    mov w0, #1
    ret
return_false_and:
    mov w0, #0
    ret

// ARM64 Logical OR:
// Inputs: w0 and w1 (0 or 1)
// Output: w0 (1 if either TRUE, else 0)
or_caskade:
    cmp w0, #1
    beq return_true_or
    cmp w1, #1
    beq return_true_or
    mov w0, #0
    ret
return_true_or:
    mov w0, #1
    ret
