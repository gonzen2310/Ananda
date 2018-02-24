package Chapter8.SuperClassReferenceSubClassObj;

public class RefDemo {
    public static void main(String[] args) {
        BoxWeight weightbox = new BoxWeight(3,5,7,8.37);
        Box plainbox = new Box();
        double vol;

        vol = weightbox.volume();
        System.out.println("Volume of weightbox is " + vol);
        System.out.println("Weight of weightbox is " + weightbox.weight);
        System.out.println();

        // Assign BoxWeight reference to Box Reference
        plainbox = weightbox;

        vol = plainbox.volume(); // Ok, volume()n is defined in Box
        System.out.println("Volume of plainbox is " + vol);

        /*
         * The following statement is invalid because plainbox
         * does not define a weight member
         */
        //System.out.println("Weight of plainbox is " + plainbox.weight);
    }
}

// ANNOTATIONS
/*
 * A reference variable of a SUPERCLASS can be assigned a reference to any SUBCLASS derived from that SUPERCLASS
 * Here, "weightbox" is a reference to BoxWeight objects, and "plainbox" is a reference to Box objects
 * Since BoxWeight is a SUBCLASS of Box, it is permissible to assign "plainbox" a reference to the "weightbox" object
 * !!!! IT IS THE TYPE OF THE REFERENCE VARIABLE - NOT THE TYPE OF THE OBJECT THAT IT REFERS TO - THAT DETERMINES WHAT
        MEMBERS CAN BE ACCESSED !!!!
        - That is, when a reference to a SUBCLASS objects is assigned to a SUPERCLASS reference variable, you will have
          access only to those parts of the object defined by the SUPERCLASS
            * This is why "plainbox" can't access weight even when it refers to a BoxWight object
        - SUPERCLASS has no knowledge of what a SUBCLASS adds to it
 */