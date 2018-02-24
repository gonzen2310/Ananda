package Chapter8.SuperKeyword;

public class DemoSuper {
    private static void printBoxes(String box, double v, double w) {
        System.out.println("Volume of " + box + " is " + v);
        System.out.println("Weight of " + box + " is " + w);
        System.out.println();
    }
    public static void main(String[] args) {
        BoxWeight mybox1 = new BoxWeight(10, 20, 15, 34.3);
        BoxWeight mybox2 = new BoxWeight(2,3,4, 0.076);
        BoxWeight mybox3 = new BoxWeight(); // default
        BoxWeight mycube = new BoxWeight(3, 2);
        BoxWeight myclone = new BoxWeight(mybox1);
        double vol;

        vol = mybox1.volume();
        printBoxes("mybox1", vol, mybox1.weight);
        vol = mybox2.volume();
        printBoxes("mybox2", vol, mybox2.weight);
        vol = mybox3.volume();
        printBoxes("mybox3", vol, mybox3.weight);
        vol = myclone.volume();
        printBoxes("myclone", vol, myclone.weight);
        vol = mycube.volume();
        printBoxes("mycube", vol, mycube.weight);

    }
}
