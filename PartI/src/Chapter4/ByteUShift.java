package Chapter4;
// Unsigned shifting a byte value
public class ByteUShift {
    public static void main(String[] args) {
        char hex[] = {
                '0','1','2','3','4','5','6',
                '7','8','9','a','b','c','d','e','f'
        };
        byte b = (byte) 0xF1; //1111 0001
        byte c = (byte) (b >> 4); // 1111 1111
        byte d = (byte) (b >>> 4); // 1111 1111
        /*
         * Sign extension when b was promoted to INT before the shift
         */
        byte e = (byte) ((b & 0xFF) >> 4); // 1111 0001 ==> 0000 1111
        System.out.println(" b = 0x" + hex[(b >> 4) & 0x0f] + hex[b & 0x0f]);
        System.out.println(" b >> 4 = 0x" + hex[(c >> 4) & 0x0f] + hex[c & 0x0f]);
        System.out.println(" b >>> 4 = 0x" + hex[(d >> 4) & 0x0f] + hex[d & 0x0f]);
        System.out.println("(b & 0xff) >> 4 = 0x" + hex[(e >> 4) & 0x0f] + hex[e & 0x0f]);

    }
}

// THE UNSIGNED RIGHT SHIFT
/*
 * The >> operator fills the high-order bit with its previous contents
 * that preserves the sign of the value. However, sometimes is undesirable
        * e.g. When working with pixel-based values
        * You want to shift a zero into the high-order bit no matter what
          its initial value was ==> "UNSIGNED SHIFT"
 */
