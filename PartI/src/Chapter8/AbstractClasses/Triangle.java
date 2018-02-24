package Chapter8.AbstractClasses;

public class Triangle extends Figure{
    Triangle(double a, double b) {
        super(a, b);
    }

    // override area from right triangle
    @Override
    double area() {
        System.out.println("Inside Area for Triangle.");
        return this.dim1 * this.dim2 / 2;
    }
}
