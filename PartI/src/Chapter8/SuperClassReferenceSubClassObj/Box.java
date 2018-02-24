package Chapter8.SuperClassReferenceSubClassObj;

public class Box {
    double width;
    double height;
    double depth;

    // construct clone of an object
    Box(Box ob) { // pass object to constructor
        this.width = ob.width;
        this.height = ob.height;
        this.depth = ob.depth;
    }

    // constructor used when all dimensions specified
    Box(double width, double height, double depth) {
        this.width = width;
        this.height = height;
        this.depth = depth;
    }

    // constructor used when no dimensions specified
    Box() {
        width = -1;  // use -1 to indicate
        height = -1; // an uninitialized
        depth = -1;  // box
    }

    // constructor used when cube is created
    Box(double len) {
        width = height = depth = len;
    }

    // compute and return volume
    double volume() {
        return height * width * depth;
    }
}
