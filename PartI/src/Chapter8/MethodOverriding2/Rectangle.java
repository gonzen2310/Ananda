package Chapter8.MethodOverriding2;

public class Rectangle extends Figure{
    Rectangle(double d1, double d2) {
        super(d1, d2);
    }
    // override area for rectangle
    @Override
    double area() {
        System.out.println("Inside Area for Rectangle");
        return this.dim1 * this.dim2;
    }
}
