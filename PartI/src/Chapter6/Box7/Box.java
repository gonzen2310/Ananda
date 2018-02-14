package Chapter6.Box7;

public class Box {
    double width;
    double height;
    double depth;

    // This is te constructor for Box
    Box(double width, double height, double depth) {
        this.width = width;
        this.height = height;
        this.depth = depth;
    }

    // Compute and return volume
    double volume() {
        return width * height * depth;
    }
}
