package Chapter8.MethodOverriding;
// Methods with differing type signatures are overloaded -
// not overridden
public class AOverload {
    int i, j;

    AOverload(int a, int b) {
        this.i = a;
        this.j = b;
    }
    // display i and j
    void show() {
        System.out.println("i and j: " + i + " " + j);
    }
}
