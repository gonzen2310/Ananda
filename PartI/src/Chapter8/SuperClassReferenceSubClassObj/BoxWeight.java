package Chapter8.SuperClassReferenceSubClassObj;

public class BoxWeight extends Box {
    // constructor for BoxWeight
    double weight;

    BoxWeight(double width, double height, double depth, double mass) {
        this.width = width;
        this.height = height;
        this.depth = depth;
        this.weight = mass;
    }
}
