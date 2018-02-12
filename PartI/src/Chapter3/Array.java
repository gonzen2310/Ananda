package Chapter3;
// Demonstrate a one-dimensional array
public class Array {
    public static void main(String[] args) {
        int month_days[];
        month_days = new int[12];
        month_days[0] = 31;
        month_days[1] = 28;
        month_days[2] = 31;
        month_days[3] = 30;
        month_days[4] = 31;
        month_days[5] = 30;
        month_days[6] = 31;
        month_days[7] = 31;
        month_days[8] = 30;
        month_days[9] = 31;
        month_days[10] = 30;
        month_days[11] = 31;
        System.out.println("April has " + month_days[3] + " days.");
    }
}
// ARRAYS
/*
 * Is a group of like-typed variables that are referred to by a common name
 * Arrays of any type can be created and may have one or more dimensions
 * A specific element in an array is accessed by its index
 * Arrays offer convenient means of grouping related information
 * Arrays in Java work differently than they do in C/C++
 */

// ONE-D ARRAY
/*
 * List of like-typed variables
 * GENERAL FORM:
    * type var-name[];
 * Use "new" keyword to allocate memory
 * No array actually exists until allocate memory for it
 * COMPLETE FORM:
    * type var-name[] = new type[size]
    * size => number of elements
    * To use "new" you must specify the type and number of elements to allocate
    * The elements in the array allocated by "new" will automatically be initialized:
        * to ZERO (numeric types)
        * to FALSE (boolean)
        * to NULL (reference types)
 */