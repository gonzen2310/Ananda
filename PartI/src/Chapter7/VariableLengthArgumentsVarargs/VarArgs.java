package Chapter7.VariableLengthArgumentsVarargs;
// Demonstrate variable-length arguments
public class VarArgs {
    // vaTest() now uses a vararg
    static void vaTest(int ... v) {
        System.out.print("Number of args: " + v.length + " Contents: ");
        for (int x: v) System.out.print(x + " ");
        System.out.println();
    }
    public static void main(String[] args) {
        // Notice how vaTest() can be called with a
        // variable number of arguments
        vaTest(10); // 1 arg
        vaTest(1,2,3); // 3 args
        vaTest(); // NO args
    }
}
// IMPORTANT
/*
 * In the program v is operated as an array => "v" is an array
 * The ... syntax simply tells the compiler that a variable number of argument will be used
 * In main(), vaTest() is called with different number of arguments, including no-args
 *
 */