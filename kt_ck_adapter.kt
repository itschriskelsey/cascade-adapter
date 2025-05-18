// Caskade Programming Language Adapter for Kotlin
// Created on May 18, 2025
// By Chris Kelsey of Blue Vision Studios

const val TRUE = 1
const val FALSE = 0

fun caskadeNot(x: Int): Int = if (x == TRUE) FALSE else TRUE

fun caskadeAnd(a: Int, b: Int): Int = if (a == TRUE && b == TRUE) TRUE else FALSE

fun caskadeOr(a: Int, b: Int): Int = if (a == TRUE || b == TRUE) TRUE else FALSE

fun caskadeEq(a: Int, b: Int): Int = if (a == b) TRUE else FALSE

fun caskadeNeq(a: Int, b: Int): Int = if (a != b) TRUE else FALSE

fun caskadeToBool(x: Int): Int = if (x == 0) FALSE else TRUE
