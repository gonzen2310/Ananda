package Chapter8.AbstractClasses;

public class Rectangle extends Figure{
    Rectangle(double a, double b) {
        super(a, b);
    }

    // override area() for rectangle
    @Override
    double area() {
        System.out.println("Inside Area for Rectangle");
        return this.dim1 * this.dim2;
    }
}
