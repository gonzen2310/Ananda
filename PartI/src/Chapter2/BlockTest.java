package Chapter2;
/*
 * Demonstrate a block of code.
 * Call this file "BlockTest.java"
 */
public class BlockTest {
    public static void main(String[] args) {
        int x, y = 20;


        // The target of this lop is a block
        for (x = 0; x < 10; x++) {
            System.out.println("This is x: " + x);
            System.out.println("This is y: " + y);
            y -= 2;
        }
    }
}

// BLOCKS OF CODE / CODE BLOCKS
/*
 * It's done by enclosing the statement between opening and closing curly braces
 * Once created becomes a logical unit that can be used any place that a single statement can
 */
