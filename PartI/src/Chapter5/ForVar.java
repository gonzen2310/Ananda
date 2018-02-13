package Chapter5;
// Parts of the for loop can be empty
public class ForVar {
    public static void main(String[] args) {
        int i;
        boolean done = false;

        i = 0;
        for( ; !done; ) {
            System.out.println("i is " + i);
            if(i == 10) done = true;
            i++;
        }
        // INFINITE LOOP
        /*
            for ( ; ; ) {
                // ...
            }
        */
    }
}
/*
 * While this is of no value in this simple example—indeed, it
   would be considered quite poor style—there can be times when this type of approach
   makes sense. For example, if the initial condition is set through a complex expression
   elsewhere in the program or if the loop control variable changes in a nonsequential
   manner determined by actions that occur within the body of the loop, it may be
   appropriate to leave these parts of the for empty.
 */
