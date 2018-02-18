package Chapter7.ImprovedStack;
// This class defines an integer stack that can hold 10 values
public class Stack {
    /*
     * Now, both stck and tos are private. This means that they cannot be
     * accidentally or maliciously altered in a way that would be harmful to
     * the stack
     */
    private int[] stck = new int[10];
    private int tos;

    // Initialize top-of-stack (tos)
    Stack() {
        tos = -1;
    }

    // Push an item onto the stack
    void push(int item) {
        if (tos == 9) System.out.println("Stack is full");
        else stck[++tos] = item;
    }

    // Pop and item from the stack
    int pop() {
        if (tos < -1) {
            System.out.println("Stack is empty");
            return 0;
        }
        else {
            return stck[tos--];
        }
    }
}
