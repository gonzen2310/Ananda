package Chapter3;

public class Conversion {
    public static void main(String[] args) {
        byte b;
        int i = 257;
        double d = 323.142;

        System.out.println("\nConversion of int to byte");
        b = (byte) i;
        System.out.println("i in b " + i + " " + b);
        System.out.println("\nConversion of double to int");
        i = (int)d;
        System.out.println("d in i " + d + " " + i);
        System.out.println("\nConversion of double to byte");
        b = (byte)d;
        System.out.println("d in b " + i + " " + b);




    }
}
// CONVERSION AND CASTING
/*
 * It is common to assign a value of one type to a variable of another type .
 * If the two type are COMPATIBLE, Java will perform the conversion automatically
 * EXAMPLE: Always possible to assign INT to LONG
 * There are incompatible type (e.g. DOUBLE to BYTE) ==> You must CAST (explicit conversion)
 */

// AUTOMATIC CONVERSIONS:
/*
 * When one type of data is assigned to another type of variable and:
    * The two types are compatible (BYTE to SHORT or INT to LONG)
    * The destination type is larger than the source type
    * "Widening conversion"
 */

// CASTING INCOMPATIBLE TYPES
/*
 * INT to BYTE? Needs to perform a CAST
 * "Narrowing conversion"
 * To create a conversion between two incompatible types, you must use a cast
 * A CAST is simply an explicit type conversion
 * General form:
    * (target-type) value;
 * TRUNCATION: Floating-point value to an integer type
 * If size of the whole number component is too large to fit into the target integer
 * type then that value will be reduced to modulo the target type's range/
 */


