package Chapter4;
// Demonstrate the bitwise logical operators
public class BitLogic {
    public static void main(String[] args) {
        String[] binary = {
                "0000", "0001", "0010", "0011", "0100", "0101", "0110", "0111",
                "1000", "1001", "1010", "1011", "1100", "1101", "1110", "1111"
        };
        int a = 3; // 0 + 2 + 1 or 0011 in binary
        int b = 6; // 4 + 2 + 0 or 0110 in binary
        int c = a | b; // 0111 = 7
        int d = a & b; // 0010 = 2
        int e = a ^ b; // 0101 = 5
        int f = (~a & b) | (a & ~b); // 0100 | 0001 = 0101 = 5
        int g = ~a & 0x0F; // 1100 = 12
        System.out.println("          a = " + binary[a]);
        System.out.println("          b = " + binary[b]);
        System.out.println("      a | b = " + binary[c]);
        System.out.println("      a & b = " + binary[d]);
        System.out.println("      a ^ b = " + binary[e]);
        System.out.println("~a&b | a&~b = " + binary[f]);
        System.out.println("         ~a = " + binary[g]);


    }
}

//IMPORTANT: HOW JAVA STORES INTEGER VALUES AND HOW IT REPRESENTS NEGATIVE NUMBERS?
/*
 * INTEGER TYPES: All them are represented by binary numbers of varying widths
 * For example:
        * BYTE: (42) ==> 0010 1010 ==> (32 + 8 + 4)
 * All of the INTEGER types (except CHAR) are signed integers
        * i.e. They can represent negative values as well as positive ones
 * Java uses an encoding known as "TWO'S COMPLEMENT"
        * The negative numbers are represented by inverting all of the bits in a value,
          then adding 1 to the result
        * e.g. -42 ==> 11010110
        * The reason is because is easy to see when you consider the issue of "zero crossing"
            * Assuming a BYTE value, zero is represented by 0000 0000
 */