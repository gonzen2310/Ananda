package Chapter3;

public class FloatingPointLiterals {
    public static void main(String[] args) {
        // Standard Notation
        double ex1 = 2.0;
        double ex2 = 3.14159;
        System.out.println(ex1);
        System.out.println(ex2);
        // Scientific Notation
        double ex3 = 6.022E+23;
        double ex4 = 2E-10;
        System.out.println(ex3);
        System.out.println(ex4);
        // To specify a float literal, you mast append an F or f to the constant
        float ex5 = 3.254F;
        System.out.println(ex5);
        // Java supports hexadecimal floating-points
        // You can add underscores to separate floating-point literals
        double num = 9_423_497.98_12;
        System.out.println(num);
        // ABOUT BOOLEAN LITERAL
        /*
         * In Java Boolean literal are either true or false, they do not
         * convert into any numerical representation
         * (i.e. true != 1 nor false != 0)
         */
    }
}
