package Chapter4;
// Left shifting as a quick way to multiply by 2.
public class MultByTwo {
    public static void main(String[] args) {
        int i;
        int num = 0xFFFFFFE; // ==> 268435454
        for (i = 0; i < 4; i++) {
            num = num << 1; // num <<= 1;
            System.out.println(num);
        }
    }
}
