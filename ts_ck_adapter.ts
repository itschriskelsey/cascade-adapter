// Caskade Programming Language Adapter for TypeScript
// Created on May 18, 2025
// By Chris Kelsey of Blue Vision Studios

const TRUE = 1;
const FALSE = 0;

function caskadeNot(x: number): number {
    return x === TRUE ? FALSE : TRUE;
}

function caskadeAnd(a: number, b: number): number {
    return a === TRUE && b === TRUE ? TRUE : FALSE;
}

function caskadeOr(a: number, b: number): number {
    return a === TRUE || b === TRUE ? TRUE : FALSE;
}

function caskadeEq(a: number, b: number): number {
    return a === b ? TRUE : FALSE;
}

function caskadeNeq(a: number, b: number): number {
    return a !== b ? TRUE : FALSE;
}

function caskadeToBool(x: number): number {
    return x === 0 ? FALSE : TRUE;
}
