package Chapter8.MultipleHierarchy;
// Add shipping costs
public class Shipment extends BoxWeight{
    double cost;

    // construct clone of an object
    Shipment(Shipment ob) { // pass object to constructor
        super(ob);
        this.cost = ob.cost;
    }

    // constructor when all parameters are specified
    Shipment(double width, double height, double depth, double mass, double cost) {
        super(width, height, depth, mass);
        this.cost = cost;
    }

    // default constructor
    Shipment() {
        super();
        this.cost = -1;
    }

    // constructor used when cube is created
    Shipment(double len, double mass, double cost) {
        super(len, mass);
        this.cost = cost;
    }
}
