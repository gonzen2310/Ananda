package Chapter8.MultipleHierarchy;
// Extend BoxWeight to include shipping costs

// Start with Box.
public class Box {
    private double width;
    private double height;
    private double depth;

    // Construct clone of an object
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
        this.width = -1;  // use -1 to indicate
        this.height = -1; // an uninitialized
        this.depth = -1;  // box
    }

    // constructor used when cube is created
    Box(double len) {
        this.width = this.height = this.depth = len;
    }

    // compute and return volume
    double volume() {
        return this.width * this.height * this.depth;
    }
}
