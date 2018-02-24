package Chapter8.InheritanceSimpleExample;
// Create a subclass by extending class A
public class B extends A {
    int k;

    void showk() {
        System.out.println("k: " + k);
    }

    void sum() {
        System.out.println("i + j + k: " + (super.i+super.j+k));
    }
}
