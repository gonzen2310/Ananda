package Chapter7.PassReference;
// Objects are passed through their references
public class Test {
    int a, b;

    Test(int i, int j) {
        this.a = i;
        this.b = j;
    }

    // pass an object
    void meth(Test o) {
        o.a *= 2;
        o.b /= 2;
    }
}
