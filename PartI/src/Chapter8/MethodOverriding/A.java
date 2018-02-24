package Chapter8.MethodOverriding;

public class A {
    int i, j;
    A(int a, int b) {
        this.i = a;
        this.j = b;
    }

    // display i and j
    void show() {
        System.out.println("i and j: " + i + " " + j);
    }
}
