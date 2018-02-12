package Chapter3;

public class Promote {
    public static void main(String[] args) {
        byte b = 42;
        char c = 'a';
        short s = 1024;
        int i = 50000;
        float f = 5.67f;
        double d = .1234;
        double result = (f * b) + (i / c) - (d * s);
        System.out.println((f * b) + " + " + (i / c) + " - " + (d * s));
        System.out.println("result = " + result);
    }
}

// TYPE PROMOTION RULES THAT APPLY TO EXPRESSION
/*
 * 1. All BYTE, SHORT and CHAR values are promoted to INT
    * If one operand is a LONG, the whole expression is promote to LONG
 * 2. If one operand is FLOAT, the entire expression is promoted to FLOAT
 * 3. If one operand is DOUBLE, the entire expression is promoted to DOUBLE
 *
 */
