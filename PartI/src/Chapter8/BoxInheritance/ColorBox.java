package Chapter8.BoxInheritance;
// Here, Box is extended to include color
public class ColorBox extends Box{
    int color; // color of box

    ColorBox(double width, double height, double depth, int color) {
        this.width = width;
        this.height = height;
        this.depth = depth;
        this.color = color;
    }
}
