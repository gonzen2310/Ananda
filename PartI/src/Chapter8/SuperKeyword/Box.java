package Chapter8.SuperKeyword;
// A complete implementation of BoxWeight.
public class Box {
    private double width;
    private double height;
    private double depth;

    // construct clone of an object
    Box(Box ob) { // pass object to constructor
        this.width = ob.width;
        this.height = ob.height;
        this.depth = ob.depth;
    }

    // constructor used when all dimension specified
    Box(double width, double height, double depth) {
        this.width = width;
        this.height = height;
        this.depth = depth;
    }

    // constructor used when no dimensions specified
    Box() {
        this.width = -1;  // use -1 to indicate
        this.height = -1; // an uninitialized
        this.depth = -1;  // box
    }

    // constructor used when cube is created
    Box(double len) {
        width = height = depth = len;
    }

    // compute and return volume
    double volume() {
        return  this.width * this.height * this.depth;
    }
}
