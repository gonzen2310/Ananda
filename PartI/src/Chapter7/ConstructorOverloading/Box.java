package Chapter7.ConstructorOverloading;
/*
 * Here, Box defines three constructors to initialize the
 * dimensions of a box various ways
 */
public class Box {
    double width;
    double height;
    double depth;
    // Constructor used when all dimensions specified
    Box(double width, double height, double depth) {
        this.width = width;
        this.height = height;
        this.depth = depth;
    }

    // Constructor used when no dimensions specified
    Box() {
        width = -1; // use -1 to indicate
        height = -1;  // an uninitialized
        depth = -1; // box
    }

    // Constructor used when cube is created
    Box(double len) {
        width = height = depth = len;
    }

    // Compute and return volume
    double volume() {
        return width * height * depth;
    }
}
