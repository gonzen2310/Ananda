package Chapter3;
// Demonstrate lifetime of a variable
public class LifeTime {
    public static void main(String[] args) {
        int x;
        for(x = 0; x < 3; x++) {
            int y = -1; // y is initialized each time block is entered
            System.out.println("y is " + y); // this always print -1
            y = 100;
            System.out.println("y is now " + y);
        }
    }
}

// IMPORTANT
/*
 * Variables are crated when their scope is entered, and destroyed when their
 * scope is left ==> Variable will not hold its value once it has gone out of scope
 * YOU CANNOT declare a variable to have the same name as one in the outer scope
 *
    class ScopeErr {
        public static void main(String[] args) {
            int bar = 1;
            {                // Creates new scope
                int bar = 2; // Compile-time error - bar already defined
            }
        }
    }
 */
