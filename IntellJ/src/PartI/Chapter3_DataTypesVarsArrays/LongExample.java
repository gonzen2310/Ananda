package PartI.Chapter3_DataTypesVarsArrays;
/*
 * Compute distance light travels using long variables.
 */
public class LongExample {
    public static void main(String[] args) {
        // approximate speed of light in miles per second
        int lightspeed = 186000;

        long days;
        long seconds;
        long distance;

        days = 1000; // specify number of days here

        seconds = days * 24 * 60 * 60; // convert to seconds

        distance = lightspeed * seconds; // compute distance

        System.out.print("In " + days);
        System.out.print(" days light will travel about ");
        System.out.println(distance + " miles.");
    }
}
