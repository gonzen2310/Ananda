package Chapter8.SuperKeyword;
// BoxWeight now fully implements all constructors
class BoxWeight extends Box{
    double weight; // weight of box

    // construct clone of an object
    BoxWeight(BoxWeight ob) { // Pass object to constructor
        super(ob);
        weight = ob.weight;
    }

    // constructor when all parameters are specified
    BoxWeight(double width, double height, double depth, double mass) {
        super(width, height, depth); // call superclass constructor
        this.weight = mass;
    }

    // default constructor
    BoxWeight() {
        super();
        this.weight = -1;
    }

    // constructor used when cube is created
    BoxWeight(double len, double mass) {
        super(len);
        this.weight = mass;
    }
}
