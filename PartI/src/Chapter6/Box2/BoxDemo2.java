package Chapter6.Box2;

public class BoxDemo2 {
    public static void main(String[] args) {
        Box mybox1 = new Box();
        Box mybox2 = new Box();
        double vol;

        // Assign values to mybox1's instance variables
        mybox1.width = 10;
        mybox1.height = 20;
        mybox1.depth = 15;

        /* assign different values to mybox2's
         * instance variables
         */
        mybox2.width = 3;
        mybox2.height = 6;
        mybox2.depth = 9;

        // Compute volume of first box
        vol = mybox1.width * mybox1.height * mybox1.depth;
        System.out.println("Volume of mybox1 is " + vol);

        // Compute volume of second box
        vol = mybox2.width * mybox2.height * mybox2.depth;
        System.out.println("Volume of mybox3 is " + vol);
    }
}
