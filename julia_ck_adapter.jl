# Caskade Programming Language Adapter for Julia
# Created on May 18, 2025
# By Chris Kelsey of Blue Vision Studios

const TRUE = 1
const FALSE = 0

caskade_not(x::Int) = x == TRUE ? FALSE : TRUE

caskade_and(a::Int, b::Int) = (a == TRUE && b == TRUE) ? TRUE : FALSE

caskade_or(a::Int, b::Int) = (a == TRUE || b == TRUE) ? TRUE : FALSE

caskade_eq(a::Int, b::Int) = a == b ? TRUE : FALSE

caskade_neq(a::Int, b::Int) = a != b ? TRUE : FALSE

caskade_to_bool(x::Int) = x == 0 ? FALSE : TRUE
