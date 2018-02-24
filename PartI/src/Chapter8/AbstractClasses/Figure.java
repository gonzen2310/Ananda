package Chapter8.AbstractClasses;

// Using abstract methods and class
abstract class Figure {
    double dim1, dim2;

    Figure(double a, double b){
        this.dim1 = a;
        this.dim2 = b;
    }

    // Area is now and ABSTRACT METHOD
    abstract double area();
}
