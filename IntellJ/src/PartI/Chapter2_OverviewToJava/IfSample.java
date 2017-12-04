package PartI.Chapter2_OverviewToJava;
/*
 * Demonstrate the if.
 * Call this file "IfSample.java".
 */
public class IfSample {
    public static void main(String[] args) {
        int x, y;

        x = 10;
        y = 20;

        //noinspection ConstantConditions
        if (x < y) System.out.println("x is less than y");

        x *= 2;

        if (x == y) System.out.println("x now equals to y");

        x *= 2;
        if (x > y) System.out.println("x now greater than y");

        // this won't display anything
        if (x == y) System.out.println("you won't see this");

    }
}
