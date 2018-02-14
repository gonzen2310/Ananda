package Chapter6.Box6;
/*
 * Here, Box uses a constructor to initialize the
 * dimensions of a box
 */
public class Box {
    double width;
    double height;
    double depth;

    // This is the constructor for Box
    Box() {
        System.out.println("Constructing Box ...");
        width = 10;
        height = 10;
        depth = 10;
        System.out.println("Box constructed");
    }

    // compute and return volume
    double volume() {
        return width * height * depth;
    }
}
