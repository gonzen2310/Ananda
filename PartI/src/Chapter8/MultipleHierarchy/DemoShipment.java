package Chapter8.MultipleHierarchy;

public class DemoShipment {
    public static void main(String[] args) {
        Shipment shipment1 = new Shipment(10, 20, 15, 10, 3.41);
        Shipment shipment2 = new Shipment(2,3,4,0.76,1.28);
        double vol;

        vol = shipment1.volume();
        System.out.println("Volume of shipment1 is " + vol);
        System.out.println("Weight of shipment1 is " + shipment1.weight);
        System.out.println("Shipping cost: $" + shipment1.cost);
        System.out.println();

        vol = shipment2.volume();
        System.out.println("Volume of shipment2 is " + vol);
        System.out.println("Weight of shipment2 is " + shipment2.weight);
        System.out.println("Shipping cost: $" + shipment2.cost);
        System.out.println();
    }
}

/*
 * Because of inheritance, Shipment can make use of the previously defined classes
 * of Box and BoxWeight, adding only the extra information it needs for its own,
 * specific application.
 *
 * IMPORTANT: SUPER() always refers to the constructor in the CLOSEST SUPERCLASS
 * super() in Shipments calls constructor in BoxWeight
 * super() in BoxWeight calls constructor in Box
 * In a class hierarchy, if a SUPERCLASS constructor requires parameters,
 * then all subclasses mush pass those parameters "up the line"
    * Even if the SUBCLASS does not need parameters of its own
 */

// IMPORTANT
/*
In the preceding program, the entire class hierarchy, including Box, BoxWeight,
and Shipment, is shown all in one file. This is for your convenience only.
In Java, all three classes could have been placed into their own files and
compiled separately. In fact, using SEPARATE FILES is the NORM, NOT the
EXCEPTION, in creating class hierarchies.
 */
