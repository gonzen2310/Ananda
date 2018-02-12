package Chapter4;
// Demonstrate ?.
public class Ternary {
    public static void main(String[] args) {
        int i, k;
        i = 10;
        k = i < 0 ? -i : i; // get absolute value of i
        System.out.print("Absolute value of ");
        System.out.println(i + " is " + k);
        i = -10;
        k = i < 0 ? -i : i; // get absolute value of i
        System.out.print("Absolute value of ");
        System.out.println(i + " is " + k);
    }
}

// TERNARY OPERATOR
/*
 * Can replace certain type of if-then-else statements
 * General form:
    * expression1 ? expression2: expression3
        * expression1: any expression that evaluates to a BOOLEAN value
        * if expression1 is TRUE -> expression2 is evaluated
        * if expression1 is FALSE -> expression3 is evaluated
        * Both, expression2 and expression3 are required to return the same type
          which can't be VOID
 */