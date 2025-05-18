# Caskade Programming Language Adapter for ALGOL 68
# Created on May 18, 2025
# By Chris Kelsey of Blue Vision Studios

INT TRUE = 1;
INT FALSE = 0;

PROC NOT = (INT x) INT:
    IF x = TRUE THEN FALSE ELSE TRUE FI;

PROC AND = (INT a, INT b) INT:
    IF a = TRUE AND b = TRUE THEN TRUE ELSE FALSE FI;

PROC OR = (INT a, INT b) INT:
    IF a = TRUE OR b = TRUE THEN TRUE ELSE FALSE FI;

PROC EQ = (INT a, INT b) INT:
    IF a = b THEN TRUE ELSE FALSE FI;

PROC NEQ = (INT a, INT b) INT:
    IF a ~= b THEN TRUE ELSE FALSE FI;

PROC TO_BOOL = (INT x) INT:
    IF x = 0 THEN FALSE ELSE TRUE FI;
