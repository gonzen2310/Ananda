package Chapter6.Box5;
// Thus program uses a parameterized method
public class Box {
    double width;
    double height;
    double depth;

    // Compute and return volume
    double volume() {
        return width * height * depth;
    }

    // Set dimensions of box
    void setDim(double w, double h, double d) {
        width = w;
        height = h;
        depth = d;
    }
}
