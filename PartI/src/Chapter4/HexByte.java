package Chapter4;
// Masking sign extension
public class HexByte {
    public static void main(String[] args) {
        // SIGN EXTENSION
        char hex[] = {
                '0','1','2','3','4','5','6',
                '7','8','9','a','b','c','d','e','f'
        };
        byte b = (byte)0xF1; // 16 * 15 + 1 ==> 1111 0001
        System.out.println("b = 0x" + hex[(b >> 4) & 0x0F] + hex[b & 0x0F]);
    }
}
