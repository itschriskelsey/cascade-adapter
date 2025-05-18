# Caskade Programming Language Adapter for Ruby
# Created on May 18, 2025
# By Chris Kelsey of Blue Vision Studios

TRUE = 1
FALSE = 0

def NOT(x)
  x == TRUE ? FALSE : TRUE
end

def AND(a, b)
  (a == TRUE && b == TRUE) ? TRUE : FALSE
end

def OR(a, b)
  (a == TRUE || b == TRUE) ? TRUE : FALSE
end

def EQ(a, b)
  a == b ? TRUE : FALSE
end

def NEQ(a, b)
  a != b ? TRUE : FALSE
end

def TO_BOOL(x)
  x == 0 ? FALSE : TRUE
end
