// Caskade Programming Language Adapter for Java
// Created on May 18, 2025
// By Chris Kelsey of Blue Vision Studios

public class java_ck_adapter {

    // Caskade 'true' = 1, 'false' = 0
    public static final int TRUE = 1;
    public static final int FALSE = 0;

    // Logical NOT
    public static int NOT(int x) {
        return (x == TRUE) ? FALSE : TRUE;
    }

    // Logical AND
    public static int AND(int a, int b) {
        return (a == TRUE && b == TRUE) ? TRUE : FALSE;
    }

    // Logical OR
    public static int OR(int a, int b) {
        return (a == TRUE || b == TRUE) ? TRUE : FALSE;
    }

    // Equality
    public static int EQ(int a, int b) {
        return (a == b) ? TRUE : FALSE;
    }

    // Inequality
    public static int NEQ(int a, int b) {
        return (a != b) ? TRUE : FALSE;
    }

    // Convert any value to Caskade boolean
    public static int TO_BOOL(int x) {
        return (x == 0) ? FALSE : TRUE;
    }
}
