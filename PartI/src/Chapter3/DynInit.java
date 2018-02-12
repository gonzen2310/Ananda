package Chapter3;
// Demonstrate dynamic initialization
public class DynInit {
    public static void main(String[] args) {
        double a = 3.0, b = 4.0;

        // c is dynamically initialized
        double c = Math.sqrt(Math.pow(a, 2) + Math.pow(b, 2));
        System.out.println("Hypotenuse is " + c);
        // Math is a predefined Java class
        // sqrt() and pow() are Java built-in methods
    }
}

// VARIABLE: Basic unit of storage ina java program
/*
 * All Java variables must be declared before they can be used
 * Basic form : type identifier [= value][, identifier [= value] ..];
 * VARIABLE INITIALIZATION:
    * int a, b, c;
    * int d = 3, e, f = 5;
    * byte z = 22;
    * double pi = 3.14159;
    * char x = 'x';
 */