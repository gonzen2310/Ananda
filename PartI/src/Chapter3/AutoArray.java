package Chapter3;
// An improved version of the previous program
public class AutoArray {
    public static void main(String[] args) {
        int month_days[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        System.out.println("October has " + month_days[9] + " days");
    }
}

// ARRAY INITIALIZER
/*
 * An array initializer is a list of comma-separated expressions surrounded
 * by curly braces. The commas separate the values of the array elements
 * The array will automatically be created large enough to hold the number of
 * element you specify in the array initializer
 * No need to use "new"
 */