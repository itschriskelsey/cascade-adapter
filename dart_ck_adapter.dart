// Caskade Programming Language Adapter for Dart
// Created on May 18, 2025
// By Chris Kelsey of Blue Vision Studios

const int TRUE = 1;
const int FALSE = 0;

int caskadeNot(int x) => x == TRUE ? FALSE : TRUE;

int caskadeAnd(int a, int b) => (a == TRUE && b == TRUE) ? TRUE : FALSE;

int caskadeOr(int a, int b) => (a == TRUE || b == TRUE) ? TRUE : FALSE;

int caskadeEq(int a, int b) => (a == b) ? TRUE : FALSE;

int caskadeNeq(int a, int b) => (a != b) ? TRUE : FALSE;

int caskadeToBool(int x) => x == 0 ? FALSE : TRUE;
