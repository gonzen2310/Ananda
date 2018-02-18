package Chapter7.ConstructorOverloading2;
// Here, Box allows one object to initialize another
public class Box {
    double width;
    double height;
    double depth;

    // Notice this constructor. It takes an object of type Box.
    Box(Box ob) { // [pass object to constructor
        this.width = ob.width;
        this.height = ob.height;
        this.depth = ob.depth;
    }

    // Constructor used when all dimensions specified
    Box (double width, double height, double depth) {
        this.width = width;
        this.height = height;
        this.depth = depth;
    }

    // Constructor used when no dimension specified
    Box() {
        width = -1;
        height = -1;
        depth = -1;
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
