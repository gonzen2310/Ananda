package Chapter3;

public class IntegerLiterals {
    public static void main(String[] args) {
        int decimal = 2310;
        byte octal = 047;
        int hex = 0xF524;
        short binary = 0b1001;
        System.out.println(decimal);
        System.out.println(octal);
        System.out.println(octal);
        System.out.println(binary);
        // You can use _ to separate (visually) literals
        // Underscores will be ignored
        int x = 123_456_789;
        int y = 0b1101_0101_0001_1010; //54554
        System.out.println(x);
        System.out.println(y);
    }
}
