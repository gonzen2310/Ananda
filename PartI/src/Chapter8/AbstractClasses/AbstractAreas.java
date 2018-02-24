package Chapter8.AbstractClasses;

public class AbstractAreas {
    public static void main(String[] args) {
        // Figure f = new Figure(10, 10); // illegal now
        Rectangle r = new Rectangle(9, 5);
        Triangle t = new Triangle(10, 8);
        Figure figref; // This is OK, no OBJECTS is created

        figref = r;
        System.out.println("Area is " + figref.area());

        figref = t;
        System.out.println("Area is " + figref.area());
    }
}
// ANNOTATIONS
/*
    It is no possible to declare objects of type Figure, since it is now abstract. And, all subclasses of Figure must override area( ). To
prove this to yourself, try creating a subclass that does not override area( ). You will receive
a compile-time error
 */
