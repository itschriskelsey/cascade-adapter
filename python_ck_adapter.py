# Caskade Programming Language Adapter for Python
# Created on May 18, 2025
# By Chris Kelsey of Blue Vision Studios

# Caskade 'true' = 1, 'false' = 0
true = 1
false = 0

def NOT(x):
    return false if x == true else true

def AND(a, b):
    return true if a == true and b == true else false

def OR(a, b):
    return true if a == true or b == true else false

def EQ(a, b):
    return true if a == b else false

def NEQ(a, b):
    return true if a != b else false

def TO_BOOL(x):
    return false if x == 0 else true
