package Chapter3;
// char variables behave like integers
public class CharDemo2 {
    public static void main(String[] args) {
        char ch1;
        ch1 = 'X';

        System.out.println("ch1 contains " + ch1);

        ch1++; // increment ch1
        System.out.println("ch1 is now " + ch1);
    }
}

// IMPORTANT: In JAVA official documentation, char is referred as an integral type