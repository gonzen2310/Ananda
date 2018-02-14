package Chapter6.Box1;

public class BoxDemo {
    public static void main(String[] args) {
        // Declare an object of type Box
        Box mybox = new Box();
        /*
         * Box mybox; // Declares reference to OBJECT
         * mybox = new Box(); // allocate a Box OBJECT
         */
        // Until this point, mybox simply holds, in essence, the memory
        // address of the actual Box OBJECT
        double vol;

        // Assign values to mybox's instance variables
        mybox.width = 10;
        mybox.height = 20;
        mybox.depth = 15;

        // Compute volume of the box
        vol = mybox.width * mybox.height * mybox.depth;

        System.out.println("Volume is " + vol);
    }
}
