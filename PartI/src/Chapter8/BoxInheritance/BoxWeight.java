package Chapter8.BoxInheritance;

// Here, Box is extended to include weight
public class BoxWeight extends Box{
    double weight; // weight of box

    // constructor for BoxWeight
    BoxWeight(double width, double height, double depth, double mass) {
        this.width = width;
        this.height = height;
        this.depth = depth;
        this.weight = mass;
    }
}
