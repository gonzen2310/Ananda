package Chapter3;
// Demonstrate block scope.
public class Scope {
    public static void main(String[] args) {
        int x; // known to all code within main
        x = 10;

        if (x == 10) { // start new scope
            int y = 20; // known only to this block
            // x and y both known here
            System.out.println("x and y: " + x + " " + y);
            x = y * 2;
        }
        // y = 100; // ERROR! y not known here
        // x is still known here
        System.out.println("x is " + x);
    }
}

// SCOPE IN JAVA
/*
 * Java defines two major scopes:
    * Defined by class
    * Defined by method
 * BY METHOD:
    *  Begins with its opening curly brace
    *  If method has parameters, they too are include within the method's scope
    *  AS GENERAL RULE: Variables declared inside a scope are not visible
    *  (accessible) to code that is defined outside that scope. ----> Encapsulation
    *  Scopes can be nested:
        * When this occurs, the outer scope will be visible to code within
        * the inner scope. However, the reverse is not true
 */